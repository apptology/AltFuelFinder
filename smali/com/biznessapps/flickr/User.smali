.class public Lcom/biznessapps/flickr/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/biznessapps/flickr/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/biznessapps/flickr/User;->id:Ljava/lang/String;

    .line 12
    return-void
.end method
