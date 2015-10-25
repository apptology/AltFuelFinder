.class Lcom/biznessapps/events/EventV2DetailsActivity$3;
.super Ljava/lang/Object;
.source "EventV2DetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventV2DetailsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/events/EventV2DetailsActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$3;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$3;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$3;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->goingButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$500(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventV2DetailsActivity$3;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    # getter for: Lcom/biznessapps/events/EventV2DetailsActivity;->goingTabContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$600(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    # invokes: Lcom/biznessapps/events/EventV2DetailsActivity;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V
    invoke-static {v0, v1, v2}, Lcom/biznessapps/events/EventV2DetailsActivity;->access$200(Lcom/biznessapps/events/EventV2DetailsActivity;Landroid/widget/Button;Landroid/view/ViewGroup;)V

    .line 211
    return-void
.end method
