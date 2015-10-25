.class Lcom/biznessapps/around_us/AroundUsDetailActivity$4;
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
    .line 208
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$4;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$4;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    invoke-static {v0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->access$000(Lcom/biznessapps/around_us/AroundUsDetailActivity;)Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$4;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity$4;->this$0:Lcom/biznessapps/around_us/AroundUsDetailActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    invoke-static {v3}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->access$000(Lcom/biznessapps/around_us/AroundUsDetailActivity;)Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getLocation()Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/location/entities/LocationEntity;->getEmail()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    return-void
.end method
