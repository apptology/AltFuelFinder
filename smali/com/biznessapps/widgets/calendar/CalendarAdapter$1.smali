.class Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;
.super Ljava/lang/Object;
.source "CalendarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/widgets/calendar/CalendarAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;

    .line 130
    .local v0, "cell":Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;
    invoke-virtual {v0}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->getDateView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 131
    .local v4, "selectedItem":I
    invoke-virtual {v0}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->isBlocked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    # getter for: Lcom/biznessapps/widgets/calendar/CalendarAdapter;->cellData:Ljava/util/List;
    invoke-static {v6}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->access$000(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/calendar/CalendarCellData;

    .line 133
    .local v1, "data":Lcom/biznessapps/widgets/calendar/CalendarCellData;
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    # getter for: Lcom/biznessapps/widgets/calendar/CalendarAdapter;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->access$100(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->blocked_day:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "template":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/biznessapps/widgets/calendar/CalendarCellData;->getBlockedDayName()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "day":Ljava/lang/String;
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    # getter for: Lcom/biznessapps/widgets/calendar/CalendarAdapter;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->access$100(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "%s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    .end local v1    # "data":Lcom/biznessapps/widgets/calendar/CalendarCellData;
    .end local v2    # "day":Ljava/lang/String;
    .end local v5    # "template":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {v0}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    # getter for: Lcom/biznessapps/widgets/calendar/CalendarAdapter;->cellData:Ljava/util/List;
    invoke-static {v6}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->access$000(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/calendar/CalendarCellData;

    .line 138
    .restart local v1    # "data":Lcom/biznessapps/widgets/calendar/CalendarCellData;
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    # invokes: Lcom/biznessapps/widgets/calendar/CalendarAdapter;->isInPreviousMonth(Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z
    invoke-static {v6, v1}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->access$200(Lcom/biznessapps/widgets/calendar/CalendarAdapter;Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    # getter for: Lcom/biznessapps/widgets/calendar/CalendarAdapter;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;
    invoke-static {v6}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->access$300(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)Lcom/biznessapps/widgets/calendar/CalendarView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/widgets/calendar/CalendarView;->previousMonth()V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    # invokes: Lcom/biznessapps/widgets/calendar/CalendarAdapter;->isInNextMonth(Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z
    invoke-static {v6, v1}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->access$400(Lcom/biznessapps/widgets/calendar/CalendarAdapter;Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 141
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    # getter for: Lcom/biznessapps/widgets/calendar/CalendarAdapter;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;
    invoke-static {v6}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->access$300(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)Lcom/biznessapps/widgets/calendar/CalendarView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/widgets/calendar/CalendarView;->nextMonth()V

    goto :goto_0

    .line 143
    :cond_3
    sget v6, Lcom/biznessapps/layout/R$drawable;->datecellselected:I

    invoke-virtual {v0, v6, v9}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setBackground(IZ)V

    .line 144
    invoke-virtual {v0, v7, v9}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setTextColor(IZ)V

    .line 145
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    invoke-virtual {v6}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->getSelectedItem()I

    move-result v6

    if-le v6, v7, :cond_4

    .line 146
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    # getter for: Lcom/biznessapps/widgets/calendar/CalendarAdapter;->cellData:Ljava/util/List;
    invoke-static {v6}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->access$000(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    invoke-virtual {v7}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->getSelectedItem()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/widgets/calendar/CalendarCellData;

    iget-object v3, v6, Lcom/biznessapps/widgets/calendar/CalendarCellData;->cell:Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;

    .line 147
    .local v3, "oldCell":Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;
    invoke-virtual {v3}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->restoreBackground()V

    .line 148
    invoke-virtual {v3}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->restoreTextColor()V

    .line 150
    .end local v3    # "oldCell":Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;
    :cond_4
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    invoke-virtual {v6, v4}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->setSelectedItem(I)V

    .line 151
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    # getter for: Lcom/biznessapps/widgets/calendar/CalendarAdapter;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;
    invoke-static {v6}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->access$300(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)Lcom/biznessapps/widgets/calendar/CalendarView;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    iget v8, v1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    add-int/lit16 v8, v8, -0x76c

    iget v9, v1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->month:I

    iget v10, v1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->day:I

    invoke-direct {v7, v8, v9, v10}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/calendar/CalendarView;->setDate(Ljava/util/Date;)V

    .line 152
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    # getter for: Lcom/biznessapps/widgets/calendar/CalendarAdapter;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;
    invoke-static {v6}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->access$300(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)Lcom/biznessapps/widgets/calendar/CalendarView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/widgets/calendar/CalendarView;->getOnCellTouchListener()Lcom/biznessapps/widgets/calendar/CalendarView$OnCellTouchListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 153
    iget-object v6, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;->this$0:Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    # getter for: Lcom/biznessapps/widgets/calendar/CalendarAdapter;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;
    invoke-static {v6}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->access$300(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)Lcom/biznessapps/widgets/calendar/CalendarView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/widgets/calendar/CalendarView;->getOnCellTouchListener()Lcom/biznessapps/widgets/calendar/CalendarView$OnCellTouchListener;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/biznessapps/widgets/calendar/CalendarView$OnCellTouchListener;->onTouch(Landroid/view/View;)V

    goto/16 :goto_0
.end method
