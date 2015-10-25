.class public Lcom/biznessapps/reseller/ResellerInfo$AppInfo;
.super Ljava/lang/Object;
.source "ResellerInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/reseller/ResellerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7a0f13d330207821L


# instance fields
.field private appCode:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isActive:Z

.field private isDemo:Z

.field private isLive:Z

.field private name:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->appCode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isActive:Z

    return v0
.end method

.method public isDemo()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isDemo:Z

    return v0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isLive:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isActive:Z

    .line 169
    return-void
.end method

.method public setAppCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->appCode:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setDemo(Z)V
    .locals 0
    .param p1, "isDemo"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isDemo:Z

    .line 163
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->id:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setLive(Z)V
    .locals 0
    .param p1, "isLive"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isLive:Z

    .line 157
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->name:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->thumbnail:Ljava/lang/String;

    .line 151
    return-void
.end method
