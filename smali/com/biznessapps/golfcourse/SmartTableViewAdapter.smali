.class public abstract Lcom/biznessapps/golfcourse/SmartTableViewAdapter;
.super Ljava/lang/Object;
.source "SmartTableViewAdapter.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDataObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public abstract getColumnCount()I
.end method

.method public abstract getContentView(Landroid/view/View;II)Landroid/view/View;
.end method

.method public abstract getFrozenColumnHeaderItemView(Landroid/view/View;I)Landroid/view/View;
.end method

.method public abstract getFrozenCrossHeaderItemView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract getFrozenRowHeaderItemView(Landroid/view/View;I)Landroid/view/View;
.end method

.method public abstract getRowCount()I
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->mDataObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 33
    :cond_0
    return-void
.end method

.method registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->mDataObserver:Landroid/database/DataSetObserver;

    .line 37
    return-void
.end method

.method unregisterDataSetObserver()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->mDataObserver:Landroid/database/DataSetObserver;

    .line 41
    return-void
.end method
