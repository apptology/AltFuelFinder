.class Lcom/biznessapps/info_items/InfoDetailFragment$5;
.super Landroid/webkit/WebChromeClient;
.source "InfoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/info_items/InfoDetailFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/info_items/InfoDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/info_items/InfoDetailFragment;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/biznessapps/info_items/InfoDetailFragment$5;->this$0:Lcom/biznessapps/info_items/InfoDetailFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 189
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 190
    return-void
.end method
