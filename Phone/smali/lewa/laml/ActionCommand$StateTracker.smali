.class public abstract Llewa/laml/ActionCommand$StateTracker;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-boolean v0, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 681
    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 682
    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 683
    iput-boolean v0, p0, Llewa/laml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 684
    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 597
    iget-boolean v1, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 605
    :goto_0
    return v0

    .line 599
    :cond_0
    invoke-virtual {p0, p1}, Llewa/laml/ActionCommand$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 603
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 601
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 617
    iget-boolean v0, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 618
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 639
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Llewa/laml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 640
    const-string v1, "ActionCommand"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 643
    const-string v1, "ActionCommand"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    :goto_1
    iput-boolean v3, p0, Llewa/laml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 650
    :cond_1
    return-void

    .line 620
    :pswitch_0
    iput-boolean v4, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 621
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 625
    :pswitch_1
    iput-boolean v4, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 626
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 630
    :pswitch_2
    iput-boolean v3, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 631
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 635
    :pswitch_3
    iput-boolean v3, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 636
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 644
    :cond_2
    iget-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 645
    iput-boolean v4, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 646
    iget-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Llewa/laml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 618
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 653
    invoke-virtual {p0, p1}, Llewa/laml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 654
    .local v0, currentState:I
    sparse-switch v0, :sswitch_data_0

    .line 660
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 671
    :goto_0
    iget-boolean v1, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_2

    .line 672
    iput-boolean v2, p0, Llewa/laml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 677
    :goto_1
    return-void

    .line 664
    :sswitch_0
    iget-object v3, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    :cond_0
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_2

    .line 668
    :sswitch_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    goto :goto_0

    .line 674
    :cond_2
    iput-boolean v2, p0, Llewa/laml/ActionCommand$StateTracker;->mInTransition:Z

    .line 675
    iget-object v1, p0, Llewa/laml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Llewa/laml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 654
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method