.class Lcom/biznessapps/contact/ContactsMapActivity$2;
.super Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;
.source "ContactsMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/contact/ContactsMapActivity;->loadContent()V
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
    .line 135
    iput-object p1, p0, Lcom/biznessapps/contact/ContactsMapActivity$2;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity$2;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    # invokes: Lcom/biznessapps/contact/ContactsMapActivity;->handleInBackground()V
    invoke-static {v0}, Lcom/biznessapps/contact/ContactsMapActivity;->access$100(Lcom/biznessapps/contact/ContactsMapActivity;)V

    .line 139
    return-void
.end method
