.class Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PodcastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/podcasts/PodcastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field itemContainer:Landroid/view/ViewGroup;

.field progressButton:Lcom/biznessapps/widgets/progressbar/ProgressButton;

.field subtitle:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;

.field videoImage:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/podcasts/PodcastAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/podcasts/PodcastAdapter$1;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;-><init>()V

    return-void
.end method
