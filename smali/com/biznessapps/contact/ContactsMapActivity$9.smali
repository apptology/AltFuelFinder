.class Lcom/biznessapps/contact/ContactsMapActivity$9;
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
    .line 281
    iput-object p1, p0, Lcom/biznessapps/contact/ContactsMapActivity$9;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity$9;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    invoke-static {v0}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;)V

    .line 285
    return-void
.end method
