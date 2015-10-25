.class public Lcom/biznessapps/notepad/NotepadEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "NotepadEntity.java"


# static fields
.field private static final serialVersionUID:J = -0x1536c0ecaf24ddcfL


# instance fields
.field private content:Ljava/lang/String;

.field private noteDate:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEntity;->date:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/biznessapps/notepad/NotepadEntity;->noteDate:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/biznessapps/notepad/NotepadEntity;->date:Ljava/util/Date;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/notepad/NotepadEntity;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getNoteDate()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/biznessapps/notepad/NotepadEntity;->noteDate:J

    return-wide v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/biznessapps/notepad/NotepadEntity;->content:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setNoteDate(J)V
    .locals 0
    .param p1, "noteDate"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/biznessapps/notepad/NotepadEntity;->noteDate:J

    .line 47
    return-void
.end method
