.class public Lcom/biznessapps/common/social/stats/UserStatsProfile;
.super Ljava/lang/Object;
.source "UserStatsProfile.java"


# static fields
.field private static final PREFS_KEY_MESSAGES_TYPE:Ljava/lang/String; = "user_stats_message"

.field private static final PREFS_KEY_POSTS_TYPE:Ljava/lang/String; = "user_stats_posts"

.field private static final PREFS_KEY_REWARDS_TYPE:Ljava/lang/String; = "user_stats_rewards"

.field private static final PREFS_KEY_SHARES_TYPE:Ljava/lang/String; = "user_stats_shares"

.field private static userStatsProfile:Lcom/biznessapps/common/social/stats/UserStatsProfile;


# instance fields
.field private context:Landroid/content/Context;

.field private numberOfMessages:I

.field private numberOfPosts:I

.field private numberOfRewards:I

.field private numberOfShares:I

.field private wasDataChanged:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->wasDataChanged:Z

    .line 56
    iput-object p1, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->context:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sget-object v0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->userStatsProfile:Lcom/biznessapps/common/social/stats/UserStatsProfile;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/biznessapps/common/social/stats/UserStatsProfile;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->userStatsProfile:Lcom/biznessapps/common/social/stats/UserStatsProfile;

    .line 22
    :cond_0
    sget-object v0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->userStatsProfile:Lcom/biznessapps/common/social/stats/UserStatsProfile;

    return-object v0
.end method


# virtual methods
.method public getNumberOfMessages()I
    .locals 4

    .prologue
    .line 68
    iget v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfMessages:I

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->context:Landroid/content/Context;

    const-string v2, "user_stats_message"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfMessages:I

    .line 71
    :cond_0
    iget v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfMessages:I

    return v0
.end method

.method public getNumberOfPosts()I
    .locals 4

    .prologue
    .line 81
    iget v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfPosts:I

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->context:Landroid/content/Context;

    const-string v2, "user_stats_posts"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfPosts:I

    .line 84
    :cond_0
    iget v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfPosts:I

    return v0
.end method

.method public getNumberOfRewards()I
    .locals 4

    .prologue
    .line 107
    iget v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfRewards:I

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->context:Landroid/content/Context;

    const-string v2, "user_stats_rewards"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfRewards:I

    .line 110
    :cond_0
    iget v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfRewards:I

    return v0
.end method

.method public getNumberOfShares()I
    .locals 4

    .prologue
    .line 94
    iget v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfShares:I

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->context:Landroid/content/Context;

    const-string v2, "user_stats_shares"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfShares:I

    .line 97
    :cond_0
    iget v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfShares:I

    return v0
.end method

.method public setWasDataChanged(Z)V
    .locals 0
    .param p1, "wasDataChanged"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->wasDataChanged:Z

    .line 65
    return-void
.end method

.method public updateNumberOfMessages()V
    .locals 4

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getNumberOfMessages()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfMessages:I

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->wasDataChanged:Z

    .line 77
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->context:Landroid/content/Context;

    iget v2, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfMessages:I

    const-string v3, "user_stats_message"

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->saveInSharedPreferences(Landroid/content/Context;ILjava/lang/String;)V

    .line 78
    return-void
.end method

.method public updateNumberOfPosts()V
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getNumberOfPosts()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfPosts:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->wasDataChanged:Z

    .line 90
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->context:Landroid/content/Context;

    iget v2, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfPosts:I

    const-string v3, "user_stats_posts"

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->saveInSharedPreferences(Landroid/content/Context;ILjava/lang/String;)V

    .line 91
    return-void
.end method

.method public updateNumberOfRewards()V
    .locals 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getNumberOfRewards()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfRewards:I

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->wasDataChanged:Z

    .line 116
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->context:Landroid/content/Context;

    iget v2, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfRewards:I

    const-string v3, "user_stats_rewards"

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->saveInSharedPreferences(Landroid/content/Context;ILjava/lang/String;)V

    .line 117
    return-void
.end method

.method public updateNumberOfShares()V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getNumberOfShares()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfShares:I

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->wasDataChanged:Z

    .line 103
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->context:Landroid/content/Context;

    iget v2, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->numberOfShares:I

    const-string v3, "user_stats_shares"

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->saveInSharedPreferences(Landroid/content/Context;ILjava/lang/String;)V

    .line 104
    return-void
.end method

.method public wasDataChanged()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/biznessapps/common/social/stats/UserStatsProfile;->wasDataChanged:Z

    return v0
.end method
