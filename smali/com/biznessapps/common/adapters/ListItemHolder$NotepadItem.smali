.class public Lcom/biznessapps/common/adapters/ListItemHolder$NotepadItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotepadItem"
.end annotation


# instance fields
.field private noteDateView:Landroid/widget/TextView;

.field private noteTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNoteDateView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$NotepadItem;->noteDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNoteTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$NotepadItem;->noteTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setNoteDateView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "noteDateView"    # Landroid/widget/TextView;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$NotepadItem;->noteDateView:Landroid/widget/TextView;

    .line 813
    return-void
.end method

.method public setNoteTitleView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "noteTitleView"    # Landroid/widget/TextView;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$NotepadItem;->noteTitleView:Landroid/widget/TextView;

    .line 799
    return-void
.end method
