.class Lcom/biznessapps/contact/ContactsMapActivity$6;
.super Ljava/lang/Object;
.source "ContactsMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/contact/ContactsMapActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/contact/ContactsMapActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/contact/ContactsMapActivity;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/biznessapps/contact/ContactsMapActivity$6;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity$6;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    # getter for: Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;
    invoke-static {v0}, Lcom/biznessapps/contact/ContactsMapActivity;->access$400(Lcom/biznessapps/contact/ContactsMapActivity;)Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity$6;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    invoke-virtual {v0}, Lcom/biznessapps/contact/ContactsMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity$6;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    # getter for: Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;
    invoke-static {v1}, Lcom/biznessapps/contact/ContactsMapActivity;->access$400(Lcom/biznessapps/contact/ContactsMapActivity;)Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/location/entities/LocationEntity;->getWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->openLinkInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    :cond_0
    return-void
.end method
