.class Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NotepadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/notepad/NotepadListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field content:Landroid/widget/TextView;

.field date:Landroid/widget/TextView;

.field wordsCount:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/notepad/NotepadListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/notepad/NotepadListAdapter$1;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/biznessapps/notepad/NotepadListAdapter$ViewHolder;-><init>()V

    return-void
.end method
