.class public abstract Lcom/android/bluetooth/map/BluetoothMns$MnsClient;
.super Ljava/lang/Object;
.source "BluetoothMns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MnsClient"
.end annotation


# static fields
.field public static final V:Z


# instance fields
.field protected final OFFSET_END:J

.field protected final OFFSET_START:J

.field protected mContext:Landroid/content/Context;

.field protected mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

.field protected mMasId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 721
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "masId"

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    .line 732
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->mContext:Landroid/content/Context;

    .line 733
    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->mMasId:I

    .line 734
    sget-object v0, Lcom/android/bluetooth/map/IBluetoothMasApp;->HANDLE_OFFSET:[J

    aget-wide v0, v0, p2

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->OFFSET_START:J

    .line 735
    sget-object v0, Lcom/android/bluetooth/map/IBluetoothMasApp;->HANDLE_OFFSET:[J

    add-int/lit8 v1, p2, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->OFFSET_END:J

    .line 736
    return-void
.end method


# virtual methods
.method public getMasId()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->mMasId:I

    return v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized register(Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 739
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MnsClient"

    const-string v1, "MNS_BT: register entered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_0
    if-eqz p1, :cond_1

    .line 741
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;

    .line 742
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->registerContentObserver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    :goto_0
    monitor-exit p0

    return-void

    .line 744
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->V:Z

    if-eqz v0, :cond_2

    const-string v0, "MnsClient"

    const-string v1, "MNS_BT: register(null)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->unregisterContentObserver()V

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns$MnsClient;->mListener:Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract registerContentObserver()V
.end method

.method protected abstract unregisterContentObserver()V
.end method
