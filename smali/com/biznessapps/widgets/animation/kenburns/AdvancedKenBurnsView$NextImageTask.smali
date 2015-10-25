.class Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;
.super Ljava/util/TimerTask;
.source "AdvancedKenBurnsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NextImageTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;


# direct methods
.method private constructor <init>(Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;->this$0:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;
    .param p2, "x1"    # Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$1;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;-><init>(Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;->this$0:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    # getter for: Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;
    invoke-static {v0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->access$200(Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;)Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask$1;-><init>(Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method
