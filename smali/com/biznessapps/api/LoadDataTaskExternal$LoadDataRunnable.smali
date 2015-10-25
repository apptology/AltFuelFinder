.class public Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;
.super Ljava/lang/Object;
.source "LoadDataTaskExternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/api/LoadDataTaskExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadDataRunnable"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private canUseCaching:Z

.field private dataToParse:Ljava/lang/String;

.field private isCorrectData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->isCorrectData:Z

    return-void
.end method


# virtual methods
.method public canUseCaching(Z)V
    .locals 0
    .param p1, "canUseCaching"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->canUseCaching:Z

    .line 215
    return-void
.end method

.method public canUseCaching()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->canUseCaching:Z

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getDataToParse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->dataToParse:Ljava/lang/String;

    return-object v0
.end method

.method public isCorrectData()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->isCorrectData:Z

    return v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->activity:Landroid/app/Activity;

    .line 191
    return-void
.end method

.method public setCorrectData(Z)V
    .locals 0
    .param p1, "isCorrectData"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->isCorrectData:Z

    .line 207
    return-void
.end method

.method public setDataToParse(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->dataToParse:Ljava/lang/String;

    .line 199
    return-void
.end method
