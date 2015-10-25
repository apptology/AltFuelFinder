.class Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask$1;
.super Ljava/lang/Object;
.source "AdvancedKenBurnsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask$1;->this$1:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask$1;->this$1:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;

    iget-object v0, v0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;->this$0:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->showNextImage()V

    .line 117
    return-void
.end method
