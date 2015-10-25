.class Lcom/biznessapps/common/components/WheelDelegate$2;
.super Ljava/lang/Object;
.source "WheelDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/components/WheelDelegate;->initView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;ZLandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/components/WheelDelegate;

.field final synthetic val$labels:Ljava/util/List;

.field final synthetic val$useCalendarMode:Z


# direct methods
.method constructor <init>(Lcom/biznessapps/common/components/WheelDelegate;ZLjava/util/List;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->this$0:Lcom/biznessapps/common/components/WheelDelegate;

    iput-boolean p2, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->val$useCalendarMode:Z

    iput-object p3, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->val$labels:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "dataToSet":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->val$useCalendarMode:Z

    if-eqz v3, :cond_1

    .line 153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 154
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x72

    iget-object v4, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->this$0:Lcom/biznessapps/common/components/WheelDelegate;

    # getter for: Lcom/biznessapps/common/components/WheelDelegate;->year:Lcom/biznessapps/widgets/wheel/WheelView;
    invoke-static {v4}, Lcom/biznessapps/common/components/WheelDelegate;->access$000(Lcom/biznessapps/common/components/WheelDelegate;)Lcom/biznessapps/widgets/wheel/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 155
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->this$0:Lcom/biznessapps/common/components/WheelDelegate;

    # getter for: Lcom/biznessapps/common/components/WheelDelegate;->month:Lcom/biznessapps/widgets/wheel/WheelView;
    invoke-static {v4}, Lcom/biznessapps/common/components/WheelDelegate;->access$100(Lcom/biznessapps/common/components/WheelDelegate;)Lcom/biznessapps/widgets/wheel/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 156
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->this$0:Lcom/biznessapps/common/components/WheelDelegate;

    # getter for: Lcom/biznessapps/common/components/WheelDelegate;->day:Lcom/biznessapps/widgets/wheel/WheelView;
    invoke-static {v4}, Lcom/biznessapps/common/components/WheelDelegate;->access$200(Lcom/biznessapps/common/components/WheelDelegate;)Lcom/biznessapps/widgets/wheel/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 158
    new-instance v2, Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->this$0:Lcom/biznessapps/common/components/WheelDelegate;

    # getter for: Lcom/biznessapps/common/components/WheelDelegate;->CALENDAR_STRING_FORMAT:Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/common/components/WheelDelegate;->access$400(Lcom/biznessapps/common/components/WheelDelegate;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 159
    .local v2, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->this$0:Lcom/biznessapps/common/components/WheelDelegate;

    # getter for: Lcom/biznessapps/common/components/WheelDelegate;->targetChangedListener:Lcom/biznessapps/common/components/OnTargetChangedListener;
    invoke-static {v3}, Lcom/biznessapps/common/components/WheelDelegate;->access$500(Lcom/biznessapps/common/components/WheelDelegate;)Lcom/biznessapps/common/components/OnTargetChangedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->this$0:Lcom/biznessapps/common/components/WheelDelegate;

    # getter for: Lcom/biznessapps/common/components/WheelDelegate;->targetChangedListener:Lcom/biznessapps/common/components/OnTargetChangedListener;
    invoke-static {v3}, Lcom/biznessapps/common/components/WheelDelegate;->access$500(Lcom/biznessapps/common/components/WheelDelegate;)Lcom/biznessapps/common/components/OnTargetChangedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->this$0:Lcom/biznessapps/common/components/WheelDelegate;

    # getter for: Lcom/biznessapps/common/components/WheelDelegate;->targetTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/biznessapps/common/components/WheelDelegate;->access$600(Lcom/biznessapps/common/components/WheelDelegate;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/biznessapps/common/components/OnTargetChangedListener;->onChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->this$0:Lcom/biznessapps/common/components/WheelDelegate;

    # getter for: Lcom/biznessapps/common/components/WheelDelegate;->targetTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/biznessapps/common/components/WheelDelegate;->access$600(Lcom/biznessapps/common/components/WheelDelegate;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->this$0:Lcom/biznessapps/common/components/WheelDelegate;

    invoke-virtual {v3}, Lcom/biznessapps/common/components/WheelDelegate;->hide()V

    .line 170
    return-void

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->val$labels:Ljava/util/List;

    iget-object v4, p0, Lcom/biznessapps/common/components/WheelDelegate$2;->this$0:Lcom/biznessapps/common/components/WheelDelegate;

    # getter for: Lcom/biznessapps/common/components/WheelDelegate;->month:Lcom/biznessapps/widgets/wheel/WheelView;
    invoke-static {v4}, Lcom/biznessapps/common/components/WheelDelegate;->access$100(Lcom/biznessapps/common/components/WheelDelegate;)Lcom/biznessapps/widgets/wheel/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/widgets/wheel/WheelView;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dataToSet":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "dataToSet":Ljava/lang/String;
    goto :goto_0
.end method
