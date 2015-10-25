.class public final enum Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;
.super Ljava/lang/Enum;
.source "TwitterOAuthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/social/twitter/TwitterOAuthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

.field public static final enum ACCESS_TOKEN_ERROR:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

.field public static final enum AUTHORIZATION_ERROR:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

.field public static final enum CANCELLATION:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

.field public static final enum REQUEST_TOKEN_ERROR:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

.field public static final enum SUCCESS:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    new-instance v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->SUCCESS:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    .line 185
    new-instance v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    const-string v1, "CANCELLATION"

    invoke-direct {v0, v1, v3}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->CANCELLATION:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    .line 194
    new-instance v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    const-string v1, "REQUEST_TOKEN_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->REQUEST_TOKEN_ERROR:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    .line 201
    new-instance v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    const-string v1, "AUTHORIZATION_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->AUTHORIZATION_ERROR:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    .line 208
    new-instance v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    const-string v1, "ACCESS_TOKEN_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->ACCESS_TOKEN_ERROR:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    .line 171
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    sget-object v1, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->SUCCESS:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->CANCELLATION:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->REQUEST_TOKEN_ERROR:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->AUTHORIZATION_ERROR:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    aput-object v1, v0, v5

    sget-object v1, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->ACCESS_TOKEN_ERROR:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    aput-object v1, v0, v6

    sput-object v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->$VALUES:[Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    const-class v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    return-object v0
.end method

.method public static values()[Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->$VALUES:[Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    invoke-virtual {v0}, [Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    return-object v0
.end method
