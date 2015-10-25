.class Lcom/biznessapps/events/EventDetailsFragment$1;
.super Ljava/lang/Object;
.source "EventDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventDetailsFragment;->initCalendarButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/events/EventDetailsFragment;

.field final synthetic val$item:Lcom/biznessapps/events/EventEntity;


# direct methods
.method constructor <init>(Lcom/biznessapps/events/EventDetailsFragment;Lcom/biznessapps/events/EventEntity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/biznessapps/events/EventDetailsFragment$1;->this$0:Lcom/biznessapps/events/EventDetailsFragment;

    iput-object p2, p0, Lcom/biznessapps/events/EventDetailsFragment$1;->val$item:Lcom/biznessapps/events/EventEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/events/EventDetailsFragment$1;->this$0:Lcom/biznessapps/events/EventDetailsFragment;

    invoke-virtual {v0}, Lcom/biznessapps/events/EventDetailsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/events/EventDetailsFragment$1;->val$item:Lcom/biznessapps/events/EventEntity;

    invoke-static {v0, v1}, Lcom/biznessapps/events/EventDetailsFragment;->addEvent(Landroid/app/Activity;Lcom/biznessapps/events/EventEntity;)V

    .line 43
    return-void
.end method
