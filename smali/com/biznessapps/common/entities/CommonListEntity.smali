.class public Lcom/biznessapps/common/entities/CommonListEntity;
.super Lcom/biznessapps/common/entities/CommonEntity;
.source "CommonListEntity.java"


# static fields
.field private static final serialVersionUID:J = -0x4bd03044df2dfeacL


# instance fields
.field protected addressBottomRow:Ljava/lang/String;

.field protected addressTopRow:Ljava/lang/String;

.field private background:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private currencySign:Ljava/lang/String;

.field protected date:Ljava/util/Date;

.field private hasArrow:Z

.field private hasColor:Z

.field private hasNewDesign:Z

.field private headerImage:Ljava/lang/String;

.field private hint:Ljava/lang/String;

.field private imageId:I

.field private isSelected:Z

.field private itemColor:I

.field private itemTextColor:I

.field private openInSafari:Z

.field private section:Ljava/lang/String;

.field private showSection:Z

.field protected timeStamp:J

.field protected url:Ljava/lang/String;

.field private useAgain:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hint:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hasColor:Z

    .line 38
    iput-boolean v1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->isSelected:Z

    .line 40
    iput-boolean v2, p0, Lcom/biznessapps/common/entities/CommonListEntity;->useAgain:Z

    .line 43
    iput-boolean v2, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hasArrow:Z

    .line 46
    const-string v0, "USD"

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->currency:Ljava/lang/String;

    .line 47
    const-string v0, "$"

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->currencySign:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 3
    .param p1, "itemColor"    # I
    .param p2, "itemTextColor"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hint:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hasColor:Z

    .line 38
    iput-boolean v1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->isSelected:Z

    .line 40
    iput-boolean v2, p0, Lcom/biznessapps/common/entities/CommonListEntity;->useAgain:Z

    .line 43
    iput-boolean v2, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hasArrow:Z

    .line 46
    const-string v0, "USD"

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->currency:Ljava/lang/String;

    .line 47
    const-string v0, "$"

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->currencySign:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/biznessapps/common/entities/CommonListEntity;->title:Ljava/lang/String;

    .line 51
    iput p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->itemColor:I

    .line 52
    iput p2, p0, Lcom/biznessapps/common/entities/CommonListEntity;->itemTextColor:I

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hint:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hasColor:Z

    .line 38
    iput-boolean v1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->isSelected:Z

    .line 40
    iput-boolean v2, p0, Lcom/biznessapps/common/entities/CommonListEntity;->useAgain:Z

    .line 43
    iput-boolean v2, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hasArrow:Z

    .line 46
    const-string v0, "USD"

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->currency:Ljava/lang/String;

    .line 47
    const-string v0, "$"

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->currencySign:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->title:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getAddressBottomRow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->addressBottomRow:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressTopRow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->addressTopRow:Ljava/lang/String;

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->currencySign:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->date:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 170
    iget-wide v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->timeStamp:J

    invoke-static {v0, v1}, Lcom/biznessapps/utils/DateUtils;->getDateWithOffset(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->date:Ljava/util/Date;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getHeaderImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->headerImage:Ljava/lang/String;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->imageId:I

    return v0
.end method

.method public getItemColor()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->itemColor:I

    return v0
.end method

.method public getItemTextColor()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->itemTextColor:I

    return v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->timeStamp:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasArrow()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hasArrow:Z

    return v0
.end method

.method public hasColor()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hasColor:Z

    return v0
.end method

.method public hasNewDesign()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hasNewDesign:Z

    return v0
.end method

.method public isOpenInSafari()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->openInSafari:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->isSelected:Z

    return v0
.end method

.method public isShowSection()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->showSection:Z

    return v0
.end method

.method public isUseAgain()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->useAgain:Z

    return v0
.end method

.method public setAddressBottomRow(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressBottomRow"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->addressBottomRow:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setAddressTopRow(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressTopRow"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->addressTopRow:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setArrowVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hasArrow:Z

    .line 197
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "background"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->background:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 1
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->currency:Ljava/lang/String;

    .line 223
    :cond_0
    return-void
.end method

.method public setCurrencySign(Ljava/lang/String;)V
    .locals 1
    .param p1, "currencySign"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->currencySign:Ljava/lang/String;

    .line 233
    :cond_0
    return-void
.end method

.method public setHasColor(Z)V
    .locals 0
    .param p1, "hasColor"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hasColor:Z

    .line 94
    return-void
.end method

.method public setHasNewDesign(Z)V
    .locals 0
    .param p1, "hasNewDesign"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hasNewDesign:Z

    .line 151
    return-void
.end method

.method public setHeaderImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerImage"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->headerImage:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hint:Ljava/lang/String;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->hint:Ljava/lang/String;

    goto :goto_0
.end method

.method public setImageId(I)V
    .locals 0
    .param p1, "imageId"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->imageId:I

    .line 102
    return-void
.end method

.method public setItemColor(I)V
    .locals 1
    .param p1, "itemColor"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->itemColor:I

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/entities/CommonListEntity;->setHasColor(Z)V

    .line 119
    return-void
.end method

.method public setItemTextColor(I)V
    .locals 0
    .param p1, "itemTextColor"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->itemTextColor:I

    .line 127
    return-void
.end method

.method public setOpenInSafari(Z)V
    .locals 0
    .param p1, "openInSafari"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->openInSafari:Z

    .line 189
    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->section:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->isSelected:Z

    .line 110
    return-void
.end method

.method public setShowSection(Z)V
    .locals 0
    .param p1, "showSection"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->showSection:Z

    .line 143
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "secTimeStamp"    # J

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->timeStamp:J

    .line 162
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->url:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setUseAgain(Z)V
    .locals 0
    .param p1, "useAgain"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/CommonListEntity;->useAgain:Z

    .line 181
    return-void
.end method
