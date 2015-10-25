.class Lcom/biznessapps/events/EventV2DetailsActivity$5;
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
    .line 220
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity$5;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity$5;->this$0:Lcom/biznessapps/events/EventV2DetailsActivity;

    new-instance v1, Lcom/biznessapps/events/EventV2DetailsActivity$5$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/events/EventV2DetailsActivity$5$1;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity$5;)V

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->openChoosePhotoDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method
