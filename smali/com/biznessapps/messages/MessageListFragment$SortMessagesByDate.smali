.class Lcom/biznessapps/messages/MessageListFragment$SortMessagesByDate;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/messages/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortMessagesByDate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/biznessapps/messages/MessageEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/messages/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/biznessapps/messages/MessageListFragment;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/biznessapps/messages/MessageListFragment$SortMessagesByDate;->this$0:Lcom/biznessapps/messages/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/messages/MessageListFragment;Lcom/biznessapps/messages/MessageListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/messages/MessageListFragment;
    .param p2, "x1"    # Lcom/biznessapps/messages/MessageListFragment$1;

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/biznessapps/messages/MessageListFragment$SortMessagesByDate;-><init>(Lcom/biznessapps/messages/MessageListFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/biznessapps/messages/MessageEntity;Lcom/biznessapps/messages/MessageEntity;)I
    .locals 2
    .param p1, "o1"    # Lcom/biznessapps/messages/MessageEntity;
    .param p2, "o2"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 266
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/biznessapps/messages/MessageEntity;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    .line 269
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    .line 270
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 272
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/biznessapps/messages/MessageEntity;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_4

    .line 273
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 276
    :cond_4
    invoke-virtual {p2}, Lcom/biznessapps/messages/MessageEntity;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biznessapps/messages/MessageEntity;->getDate()Ljava/util/Date;

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
    .line 261
    check-cast p1, Lcom/biznessapps/messages/MessageEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/biznessapps/messages/MessageEntity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/messages/MessageListFragment$SortMessagesByDate;->compare(Lcom/biznessapps/messages/MessageEntity;Lcom/biznessapps/messages/MessageEntity;)I

    move-result v0

    return v0
.end method
