.class Lcom/biznessapps/notepad/NotepadListFragment$SortNotepadByDate;
.super Ljava/lang/Object;
.source "NotepadListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/notepad/NotepadListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortNotepadByDate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/biznessapps/notepad/NotepadEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/notepad/NotepadListFragment;


# direct methods
.method private constructor <init>(Lcom/biznessapps/notepad/NotepadListFragment;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/biznessapps/notepad/NotepadListFragment$SortNotepadByDate;->this$0:Lcom/biznessapps/notepad/NotepadListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/notepad/NotepadListFragment;Lcom/biznessapps/notepad/NotepadListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/notepad/NotepadListFragment;
    .param p2, "x1"    # Lcom/biznessapps/notepad/NotepadListFragment$1;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/biznessapps/notepad/NotepadListFragment$SortNotepadByDate;-><init>(Lcom/biznessapps/notepad/NotepadListFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/biznessapps/notepad/NotepadEntity;Lcom/biznessapps/notepad/NotepadEntity;)I
    .locals 2
    .param p1, "o1"    # Lcom/biznessapps/notepad/NotepadEntity;
    .param p2, "o2"    # Lcom/biznessapps/notepad/NotepadEntity;

    .prologue
    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/notepad/NotepadEntity;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 140
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/biznessapps/notepad/NotepadEntity;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_3

    .line 141
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p2}, Lcom/biznessapps/notepad/NotepadEntity;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biznessapps/notepad/NotepadEntity;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 133
    check-cast p1, Lcom/biznessapps/notepad/NotepadEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/biznessapps/notepad/NotepadEntity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/notepad/NotepadListFragment$SortNotepadByDate;->compare(Lcom/biznessapps/notepad/NotepadEntity;Lcom/biznessapps/notepad/NotepadEntity;)I

    move-result v0

    return v0
.end method
