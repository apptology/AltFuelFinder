.class public Lcom/biznessapps/flickr/Title;
.super Ljava/lang/Object;
.source "Title.java"


# instance fields
.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_content"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/biznessapps/flickr/Title;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/biznessapps/flickr/Title;->title:Ljava/lang/String;

    .line 16
    return-void
.end method
