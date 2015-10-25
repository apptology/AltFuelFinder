.class public Lcom/biznessapps/golfcourse/model/GolfCourseConfig;
.super Ljava/lang/Object;
.source "GolfCourseConfig.java"


# static fields
.field private static instance:Lcom/biznessapps/golfcourse/model/GolfCourseConfig;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUseBlurOverlay:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;->mUseBlurOverlay:Z

    .line 21
    iput-object p1, p0, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/golfcourse/model/GolfCourseConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    sget-object v0, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;->instance:Lcom/biznessapps/golfcourse/model/GolfCourseConfig;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;->instance:Lcom/biznessapps/golfcourse/model/GolfCourseConfig;

    .line 13
    :cond_0
    sget-object v0, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;->instance:Lcom/biznessapps/golfcourse/model/GolfCourseConfig;

    return-object v0
.end method


# virtual methods
.method public setUseBlurOverlay(Z)V
    .locals 0
    .param p1, "useOverlay"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;->mUseBlurOverlay:Z

    .line 26
    return-void
.end method

.method public useBlurOverlay()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/biznessapps/golfcourse/model/GolfCourseConfig;->mUseBlurOverlay:Z

    return v0
.end method
