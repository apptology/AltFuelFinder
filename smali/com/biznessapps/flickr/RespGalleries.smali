.class public Lcom/biznessapps/flickr/RespGalleries;
.super Ljava/lang/Object;
.source "RespGalleries.java"


# instance fields
.field private galleries:Lcom/biznessapps/flickr/Galleries;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGalleries()Lcom/biznessapps/flickr/Galleries;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/biznessapps/flickr/RespGalleries;->galleries:Lcom/biznessapps/flickr/Galleries;

    return-object v0
.end method

.method public setGalleries(Lcom/biznessapps/flickr/Galleries;)V
    .locals 0
    .param p1, "galleries"    # Lcom/biznessapps/flickr/Galleries;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/biznessapps/flickr/RespGalleries;->galleries:Lcom/biznessapps/flickr/Galleries;

    .line 12
    return-void
.end method
