.class Lcom/biznessapps/reservation/ReservationBookFragment$2;
.super Ljava/lang/Object;
.source "ReservationBookFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationBookFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reservation/ReservationBookFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationBookFragment;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$2;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$2;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    iget-object v6, p0, Lcom/biznessapps/reservation/ReservationBookFragment$2;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->locationButton:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$500(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;

    move-result-object v6

    # invokes: Lcom/biznessapps/reservation/ReservationBookFragment;->updateButtonsState(Landroid/widget/TextView;)V
    invoke-static {v5, v6}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$600(Lcom/biznessapps/reservation/ReservationBookFragment;Landroid/widget/TextView;)V

    .line 173
    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$2;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$700(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getLocations()Ljava/util/List;

    move-result-object v3

    .line 174
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 175
    .local v4, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/location/entities/LocationEntity;

    .line 176
    .local v2, "item":Lcom/biznessapps/location/entities/LocationEntity;
    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$2;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$800(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .end local v2    # "item":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_0
    new-instance v0, Lcom/biznessapps/reservation/ReservationLocationAdapter;

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$2;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    invoke-virtual {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/reservation/ReservationBookFragment$2;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v6}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$900(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v6

    invoke-direct {v0, v5, v4, v6}, Lcom/biznessapps/reservation/ReservationLocationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 179
    .local v0, "ex":Lcom/biznessapps/reservation/ReservationLocationAdapter;
    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$2;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->listView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1000(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$2;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->listView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1000(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/ListView;

    move-result-object v5

    new-instance v6, Lcom/biznessapps/reservation/ReservationBookFragment$2$1;

    invoke-direct {v6, p0}, Lcom/biznessapps/reservation/ReservationBookFragment$2$1;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    return-void
.end method
