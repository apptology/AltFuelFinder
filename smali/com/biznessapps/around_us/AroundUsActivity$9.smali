.class Lcom/biznessapps/around_us/AroundUsActivity$9;
.super Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;
.source "AroundUsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/around_us/AroundUsActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/around_us/AroundUsActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/around_us/AroundUsActivity;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsActivity$9;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity$9;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity$9;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;
    invoke-static {v1}, Lcom/biznessapps/around_us/AroundUsActivity;->access$200(Lcom/biznessapps/around_us/AroundUsActivity;)Lcom/biznessapps/around_us/AroundUsEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->isOk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity$9;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # invokes: Lcom/biznessapps/around_us/AroundUsActivity;->updateButtonsState()V
    invoke-static {v1}, Lcom/biznessapps/around_us/AroundUsActivity;->access$800(Lcom/biznessapps/around_us/AroundUsActivity;)V

    .line 280
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity$9;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # invokes: Lcom/biznessapps/around_us/AroundUsActivity;->initDataWithPoints()V
    invoke-static {v1}, Lcom/biznessapps/around_us/AroundUsActivity;->access$1100(Lcom/biznessapps/around_us/AroundUsActivity;)V

    .line 281
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 282
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity$9;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;
    invoke-static {v1}, Lcom/biznessapps/around_us/AroundUsActivity;->access$200(Lcom/biznessapps/around_us/AroundUsActivity;)Lcom/biznessapps/around_us/AroundUsEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsActivity$9;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/biznessapps/around_us/AroundUsActivity;->access$1200(Lcom/biznessapps/around_us/AroundUsActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsActivity$9;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsActivity;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v3}, Lcom/biznessapps/around_us/AroundUsActivity;->access$1300(Lcom/biznessapps/around_us/AroundUsActivity;)Lcom/biznessapps/api/UiSettings;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 287
    .end local v0    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity$9;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsActivity$9;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;
    invoke-static {v2}, Lcom/biznessapps/around_us/AroundUsActivity;->access$200(Lcom/biznessapps/around_us/AroundUsActivity;)Lcom/biznessapps/around_us/AroundUsEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showErrorToast(Landroid/app/Activity;Lcom/biznessapps/common/entities/NetworkResultEntity;)V

    goto :goto_0
.end method
