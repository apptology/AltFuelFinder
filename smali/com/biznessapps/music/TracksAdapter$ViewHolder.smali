.class Lcom/biznessapps/music/TracksAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/music/TracksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field bottomTextView:Landroid/widget/TextView;

.field buyImage:Landroid/widget/ImageView;

.field itemContainer:Landroid/view/ViewGroup;

.field progressButton:Lcom/biznessapps/widgets/progressbar/ProgressButton;

.field titleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/music/TracksAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/music/TracksAdapter$1;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/biznessapps/music/TracksAdapter$ViewHolder;-><init>()V

    return-void
.end method
