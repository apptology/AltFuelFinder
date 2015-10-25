.class public Lcom/biznessapps/common/social/twitter/TwitterUserInfo;
.super Ljava/lang/Object;
.source "TwitterUserInfo.java"


# instance fields
.field public accessToken:Ljava/lang/String;

.field public accessTokenSecret:Ljava/lang/String;

.field public imgURL:Ljava/lang/String;

.field public userID:J

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLoggedIn()Z
    .locals 4

    .prologue
    .line 20
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->accessToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->accessTokenSecret:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->userID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
