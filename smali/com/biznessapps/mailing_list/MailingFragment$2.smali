.class Lcom/biznessapps/mailing_list/MailingFragment$2;
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
    .line 227
    iput-object p1, p0, Lcom/biznessapps/mailing_list/MailingFragment$2;->this$0:Lcom/biznessapps/mailing_list/MailingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment$2;->this$0:Lcom/biznessapps/mailing_list/MailingFragment;

    # getter for: Lcom/biznessapps/mailing_list/MailingFragment;->dateDelegate:Lcom/biznessapps/common/components/WheelDelegate;
    invoke-static {v0}, Lcom/biznessapps/mailing_list/MailingFragment;->access$100(Lcom/biznessapps/mailing_list/MailingFragment;)Lcom/biznessapps/common/components/WheelDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/components/WheelDelegate;->show()V

    .line 233
    return-void
.end method
