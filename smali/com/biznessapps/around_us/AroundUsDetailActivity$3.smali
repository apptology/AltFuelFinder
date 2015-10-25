.class Lcom/biznessapps/around_us/AroundUsDetailActivity$3;
.super Ljava/lang/Object;
.source "AroundUsDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/around_us/AroundUsDetailActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/around_us/AroundUsDetailActivity;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$3;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$3;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    invoke-static {v0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->access$000(Lcom/biznessapps/around_us/AroundUsDetailActivity;)Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$3;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$3;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    invoke-static {v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->access$000(Lcom/biznessapps/around_us/AroundUsDetailActivity;)Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getLongitude()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$3;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    invoke-static {v2}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->access$000(Lcom/biznessapps/around_us/AroundUsDetailActivity;)Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->openGoogleMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    return-void
.end method
