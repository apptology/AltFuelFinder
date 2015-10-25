.class Lcom/biznessapps/social/SocialFragment$3;
.super Ljava/lang/Object;
.source "SocialFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/social/SocialFragment;->initCommentsData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/biznessapps/fan_wall/CommentEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/social/SocialFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/social/SocialFragment;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$3;->this$0:Lcom/biznessapps/social/SocialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/biznessapps/fan_wall/CommentEntity;Lcom/biznessapps/fan_wall/CommentEntity;)I
    .locals 4
    .param p1, "emp1"    # Lcom/biznessapps/fan_wall/CommentEntity;
    .param p2, "emp2"    # Lcom/biznessapps/fan_wall/CommentEntity;

    .prologue
    .line 325
    invoke-virtual {p2}, Lcom/biznessapps/fan_wall/CommentEntity;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/biznessapps/fan_wall/CommentEntity;->getTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 323
    check-cast p1, Lcom/biznessapps/fan_wall/CommentEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/biznessapps/fan_wall/CommentEntity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/social/SocialFragment$3;->compare(Lcom/biznessapps/fan_wall/CommentEntity;Lcom/biznessapps/fan_wall/CommentEntity;)I

    move-result v0

    return v0
.end method
