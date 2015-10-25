.class Lcom/biznessapps/contact/ContactsMapActivity$8;
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
    .line 271
    iput-object p1, p0, Lcom/biznessapps/contact/ContactsMapActivity$8;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity$8;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    # getter for: Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;
    invoke-static {v0}, Lcom/biznessapps/contact/ContactsMapActivity;->access$400(Lcom/biznessapps/contact/ContactsMapActivity;)Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity$8;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/contact/ContactsMapActivity$8;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    # getter for: Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;
    invoke-static {v3}, Lcom/biznessapps/contact/ContactsMapActivity;->access$400(Lcom/biznessapps/contact/ContactsMapActivity;)Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/location/entities/LocationEntity;->getEmail()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method
