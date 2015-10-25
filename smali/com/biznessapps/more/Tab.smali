.class public Lcom/biznessapps/more/Tab;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/biznessapps/api/UiSettingsInterface;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private buttonBgColor:Ljava/lang/String;

.field private buttonTextColor:Ljava/lang/String;

.field private customIcon:Ljava/lang/String;

.field private defaultListBgColor:Ljava/lang/String;

.field private evenRowColor:Ljava/lang/String;

.field private evenRowTextColor:Ljava/lang/String;

.field private featureTextColor:Ljava/lang/String;

.field private globalBgColor:Ljava/lang/String;

.field private globalHeaderUrl:Ljava/lang/String;

.field private hasCustomDesign:Z

.field private id:J

.field private image:Ljava/lang/String;

.field private isHide:Z

.field private itemId:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private lastUpdated:Ljava/lang/String;

.field private navTintOpacity:F

.field private navigBarColor:Ljava/lang/String;

.field private navigBarTextColor:Ljava/lang/String;

.field private navigBarTextShadowColor:Ljava/lang/String;

.field private navigationController:Ljava/lang/String;

.field private oddRowColor:Ljava/lang/String;

.field private oddRowTextColor:Ljava/lang/String;

.field private openInSafari:Z

.field private sectionBarColor:Ljava/lang/String;

.field private sectionBarTextColor:Ljava/lang/String;

.field private sectionId:Ljava/lang/String;

.field private seq:I

.field private showText:Z

.field private subTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private tabIcon:Ljava/lang/String;

.field private tabId:Ljava/lang/String;

.field private tabImageUrl:Ljava/lang/String;

.field private tabLabelFont:Ljava/lang/String;

.field private tabLabelText:Ljava/lang/String;

.field private tabLabelTextBgColor:Ljava/lang/String;

.field private tabLabelTextColor:Ljava/lang/String;

.field private tabSrc:Ljava/lang/String;

.field private tabText:Ljava/lang/String;

.field private tabTint:Ljava/lang/String;

.field private tabTintOpacity:F

.field private url:Ljava/lang/String;

.field private useBlurEffect:Z

.field private viewController:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/more/Tab;->showText:Z

    .line 281
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/more/Tab;->label:Ljava/lang/String;

    .line 282
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/more/Tab;->image:Ljava/lang/String;

    .line 283
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/more/Tab;->viewController:Ljava/lang/String;

    .line 284
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/more/Tab;->navigationController:Ljava/lang/String;

    .line 285
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/more/Tab;->lastUpdated:Ljava/lang/String;

    .line 286
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/more/Tab;->url:Ljava/lang/String;

    .line 287
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/more/Tab;->itemId:Ljava/lang/String;

    .line 288
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/more/Tab;->sectionId:Ljava/lang/String;

    .line 289
    return-void
.end method


# virtual methods
.method public getButtonBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->buttonBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->buttonTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->customIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultListBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->globalBgColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/biznessapps/more/Tab;->defaultListBgColor:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->defaultListBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getEvenRowColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->evenRowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getEvenRowTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->evenRowTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->featureTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->globalBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalHeaderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->globalHeaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/biznessapps/more/Tab;->id:J

    return-wide v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->lastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getNavTintOpacity()F
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/biznessapps/more/Tab;->navTintOpacity:F

    return v0
.end method

.method public getNavigBarColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->navigBarColor:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigBarTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->navigBarTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigBarTextShadowColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->navigBarTextShadowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationController()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->navigationController:Ljava/lang/String;

    return-object v0
.end method

.method public getOddRowColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->oddRowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getOddRowTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->oddRowTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionBarColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->sectionBarColor:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionBarTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->sectionBarTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->sectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/biznessapps/more/Tab;->seq:I

    return v0
.end method

.method public getSubTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->subTabs:Ljava/util/List;

    return-object v0
.end method

.method public getTabIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->tabIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public getTabImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->tabImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTabLabelFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->tabLabelFont:Ljava/lang/String;

    return-object v0
.end method

.method public getTabLabelText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->tabLabelText:Ljava/lang/String;

    return-object v0
.end method

.method public getTabLabelTextBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->tabLabelTextBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTabLabelTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->tabLabelTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTabSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->tabSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getTabText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->tabText:Ljava/lang/String;

    return-object v0
.end method

.method public getTabTint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->tabTint:Ljava/lang/String;

    return-object v0
.end method

.method public getTabTintOpacity()F
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/biznessapps/more/Tab;->tabTintOpacity:F

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getViewController()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/biznessapps/more/Tab;->viewController:Ljava/lang/String;

    return-object v0
.end method

.method public hasCustomDesign()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/biznessapps/more/Tab;->hasCustomDesign:Z

    return v0
.end method

.method public isHide()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/biznessapps/more/Tab;->isHide:Z

    return v0
.end method

.method public isOpenInSafari()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/biznessapps/more/Tab;->openInSafari:Z

    return v0
.end method

.method public isShowText()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/biznessapps/more/Tab;->showText:Z

    return v0
.end method

.method public setButtonBgColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonBgColor"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->buttonBgColor:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setButtonTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonTextColor"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->buttonTextColor:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setCustomIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "customIcon"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->customIcon:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setEvenRowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "evenRowColor"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->evenRowColor:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setEvenRowTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "evenRowTextColor"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->evenRowTextColor:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setFeatureTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureTextColor"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->featureTextColor:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setGlobalBgColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "globalBgColor"    # Ljava/lang/String;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->globalBgColor:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setGlobalHeaderUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "globalHeaderUrl"    # Ljava/lang/String;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->globalHeaderUrl:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public setHasCustomDesign(Z)V
    .locals 0
    .param p1, "hasCustomDesign"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/biznessapps/more/Tab;->hasCustomDesign:Z

    .line 190
    return-void
.end method

.method public setHide(Z)V
    .locals 0
    .param p1, "isHide"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/biznessapps/more/Tab;->isHide:Z

    .line 142
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 229
    iput-wide p1, p0, Lcom/biznessapps/more/Tab;->id:J

    .line 230
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->image:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->itemId:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->label:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setLastUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastUpdated"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->lastUpdated:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setNavTintOpacity(F)V
    .locals 0
    .param p1, "navTintOpacity"    # F

    .prologue
    .line 428
    iput p1, p0, Lcom/biznessapps/more/Tab;->navTintOpacity:F

    .line 429
    return-void
.end method

.method public setNavigBarColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "navigBarColor"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->navigBarColor:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setNavigBarTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "navigBarTextColor"    # Ljava/lang/String;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->navigBarTextColor:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setNavigBarTextShadowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "navigBarTextShadowColor"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->navigBarTextShadowColor:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setNavigationController(Ljava/lang/String;)V
    .locals 0
    .param p1, "navigationController"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->navigationController:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setOddRowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "oddRowColor"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->oddRowColor:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setOddRowTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "oddRowTextColor"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->oddRowTextColor:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setOpenInSafari(Z)V
    .locals 0
    .param p1, "openInSafari"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/biznessapps/more/Tab;->openInSafari:Z

    .line 198
    return-void
.end method

.method public setSectionBarColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionBarColor"    # Ljava/lang/String;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->sectionBarColor:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setSectionBarTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionBarTextColor"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->sectionBarTextColor:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setSectionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionId"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->sectionId:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setSeq(I)V
    .locals 0
    .param p1, "seq"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/biznessapps/more/Tab;->seq:I

    .line 150
    return-void
.end method

.method public setShowText(Z)V
    .locals 0
    .param p1, "showText"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/biznessapps/more/Tab;->showText:Z

    .line 254
    return-void
.end method

.method public setSubTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "subTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->subTabs:Ljava/util/List;

    .line 246
    return-void
.end method

.method public setTabIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabIcon"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->tabIcon:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTabId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->tabId:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setTabImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabImageUrl"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->tabImageUrl:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTabLabelFont(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabLabelFont"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->tabLabelFont:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setTabLabelText(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabLabelText"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->tabLabelText:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setTabLabelTextBgColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabLabelTextBgColor"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->tabLabelTextBgColor:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setTabLabelTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabLabelTextColor"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->tabLabelTextColor:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setTabSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabSrc"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->tabSrc:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setTabText(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabText"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->tabText:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setTabTint(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabTint"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->tabTint:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setTabTintOpacity(F)V
    .locals 0
    .param p1, "tabTintOpacity"    # F

    .prologue
    .line 269
    iput p1, p0, Lcom/biznessapps/more/Tab;->tabTintOpacity:F

    .line 270
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->url:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setUseBlurEffect(Z)V
    .locals 0
    .param p1, "useBlurEffect"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/biznessapps/more/Tab;->useBlurEffect:Z

    .line 437
    return-void
.end method

.method public setViewController(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewController"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/biznessapps/more/Tab;->viewController:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public useBlurEffect()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/biznessapps/more/Tab;->useBlurEffect:Z

    return v0
.end method
