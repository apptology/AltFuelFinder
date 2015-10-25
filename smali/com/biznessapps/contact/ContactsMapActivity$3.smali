.class Lcom/biznessapps/contact/ContactsMapActivity$3;
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
    .line 142
    iput-object p1, p0, Lcom/biznessapps/contact/ContactsMapActivity$3;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity$3;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsMapActivity$3;->getDataToParse()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/biznessapps/contact/ContactsMapActivity;->tryParseData(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/biznessapps/contact/ContactsMapActivity;->access$200(Lcom/biznessapps/contact/ContactsMapActivity;Ljava/lang/String;)Z

    .line 146
    return-void
.end method
