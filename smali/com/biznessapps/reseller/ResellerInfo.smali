.class public Lcom/biznessapps/reseller/ResellerInfo;
.super Ljava/lang/Object;
.source "ResellerInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/reseller/ResellerInfo$AppInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x65f0c95ff5ce1911L


# instance fields
.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reseller/ResellerInfo$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private headerBgColor:I

.field private isActive:Z

.field private locations:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private ownerEmail:Ljava/lang/String;

.field private partnerContactEmail:Ljava/lang/String;

.field private partnerDomain:Ljava/lang/String;

.field private partnerName:Ljava/lang/String;

.field private partnerSupportEmail:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const v0, -0x777778

    iput v0, p0, Lcom/biznessapps/reseller/ResellerInfo;->headerBgColor:I

    .line 119
    return-void
.end method


# virtual methods
.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reseller/ResellerInfo$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderBgColor()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/biznessapps/reseller/ResellerInfo;->headerBgColor:I

    return v0
.end method

.method public getLocations()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo;->locations:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo;->ownerEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerContactEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo;->partnerContactEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo;->partnerDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo;->partnerName:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerSupportEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo;->partnerSupportEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/biznessapps/reseller/ResellerInfo;->isActive:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/biznessapps/reseller/ResellerInfo;->isActive:Z

    .line 117
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reseller/ResellerInfo$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo;->apps:Ljava/util/List;

    .line 109
    return-void
.end method

.method public setHeaderBgColor(I)V
    .locals 0
    .param p1, "headerBgColor"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/biznessapps/reseller/ResellerInfo;->headerBgColor:I

    .line 101
    return-void
.end method

.method public setLocations(Ljava/lang/String;)V
    .locals 0
    .param p1, "locations"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo;->locations:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setOwnerEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerEmail"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo;->ownerEmail:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setPartnerContactEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "partnerContactEmail"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo;->partnerContactEmail:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPartnerDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "partnerDomain"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo;->partnerDomain:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPartnerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "partnerName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo;->partnerName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setPartnerSupportEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "partnerSupportEmail"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo;->partnerSupportEmail:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo;->phone:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo;->username:Ljava/lang/String;

    .line 93
    return-void
.end method
