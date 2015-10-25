.class public Lcom/biznessapps/flickr/RespUser;
.super Ljava/lang/Object;
.source "RespUser.java"


# instance fields
.field private user:Lcom/biznessapps/flickr/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUser()Lcom/biznessapps/flickr/User;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/biznessapps/flickr/RespUser;->user:Lcom/biznessapps/flickr/User;

    return-object v0
.end method

.method public setUser(Lcom/biznessapps/flickr/User;)V
    .locals 0
    .param p1, "user"    # Lcom/biznessapps/flickr/User;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/biznessapps/flickr/RespUser;->user:Lcom/biznessapps/flickr/User;

    .line 12
    return-void
.end method
