.class Lcom/biznessapps/around_us/AroundUsDetailActivity$1;
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
    .line 184
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$1;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$1;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    invoke-static {v0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->access$000(Lcom/biznessapps/around_us/AroundUsDetailActivity;)Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$1;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$1;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    invoke-static {v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->access$000(Lcom/biznessapps/around_us/AroundUsDetailActivity;)Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getLocation()Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/location/entities/LocationEntity;->getTelephone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->call(Landroid/app/Activity;Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void
.end method
