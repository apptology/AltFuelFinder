.class Lcom/biznessapps/widgets/calendar/CalendarView$2;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/widgets/calendar/CalendarView;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/calendar/CalendarView;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/calendar/CalendarView;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/CalendarView$2;->this$0:Lcom/biznessapps/widgets/calendar/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView$2;->this$0:Lcom/biznessapps/widgets/calendar/CalendarView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/calendar/CalendarView;->nextMonth()V

    .line 87
    return-void
.end method
