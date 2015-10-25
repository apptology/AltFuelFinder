.class Lcom/biznessapps/mailing_list/MailingFragment$1;
.super Ljava/lang/Object;
.source "MailingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/mailing_list/MailingFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/mailing_list/MailingFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/mailing_list/MailingFragment;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/biznessapps/mailing_list/MailingFragment$1;->this$0:Lcom/biznessapps/mailing_list/MailingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment$1;->this$0:Lcom/biznessapps/mailing_list/MailingFragment;

    # invokes: Lcom/biznessapps/mailing_list/MailingFragment;->calculate()V
    invoke-static {v0}, Lcom/biznessapps/mailing_list/MailingFragment;->access$000(Lcom/biznessapps/mailing_list/MailingFragment;)V

    .line 225
    return-void
.end method
