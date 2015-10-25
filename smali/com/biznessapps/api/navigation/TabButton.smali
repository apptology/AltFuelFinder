.class public Lcom/biznessapps/api/navigation/TabButton;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "TabButton.java"


# static fields
.field private static final serialVersionUID:J = -0x6469af414c875e09L


# instance fields
.field private tab:Lcom/biznessapps/more/Tab;


# direct methods
.method public constructor <init>(Lcom/biznessapps/more/Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/biznessapps/more/Tab;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/biznessapps/api/navigation/TabButton;->tab:Lcom/biznessapps/more/Tab;

    .line 29
    return-void
.end method


# virtual methods
.method public getTab()Lcom/biznessapps/more/Tab;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabButton;->tab:Lcom/biznessapps/more/Tab;

    return-object v0
.end method
