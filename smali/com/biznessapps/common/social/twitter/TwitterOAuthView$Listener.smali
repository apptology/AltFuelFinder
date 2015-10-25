.class public interface abstract Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Listener;
.super Ljava/lang/Object;
.source "TwitterOAuthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/social/twitter/TwitterOAuthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/biznessapps/common/social/twitter/TwitterOAuthView;Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;)V
.end method

.method public abstract onSuccess(Lcom/biznessapps/common/social/twitter/TwitterOAuthView;Ltwitter4j/auth/AccessToken;)V
.end method
