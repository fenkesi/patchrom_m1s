.class Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothFtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ftp/BluetoothFtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RfcommSocketAcceptThread"
.end annotation


# instance fields
.field private stopped:Z

.field final synthetic this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V
    .locals 1
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->stopped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/ftp/BluetoothFtpService;Lcom/android/bluetooth/ftp/BluetoothFtpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 692
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;-><init>(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 700
    :goto_0
    iget-boolean v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->stopped:Z

    if-nez v0, :cond_0

    .line 702
    :try_start_0
    const-string v0, "BluetoothFtpService:RfcommSocketAcceptThread"

    const-string v1, "Run Accept thread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    #setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$202(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 704
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/ftp/BluetoothFtpService;->isL2capSocket:Z

    .line 705
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$200(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    #setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$402(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 706
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$400(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 707
    const-string v0, "BluetoothFtpService:RfcommSocketAcceptThread"

    const-string v1, "getRemoteDevice() = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    return-void

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$400(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 712
    invoke-static {}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const v1, 0x7f050098

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$600(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$600(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 717
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$400(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 720
    if-eqz v0, :cond_3

    .line 722
    :try_start_1
    const-string v0, "BluetoothFtpService:RfcommSocketAcceptThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incomming connection accepted from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " automatically as trusted device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/android/bluetooth/ftp/BluetoothFtpService;->startObexServerSession()V
    invoke-static {v0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$700(Lcom/android/bluetooth/ftp/BluetoothFtpService;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 747
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->stopped:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 748
    :catch_0
    move-exception v0

    .line 749
    iput-boolean v4, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->stopped:Z

    .line 751
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v1, 0x0

    #setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRfcommServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$302(Lcom/android/bluetooth/ftp/BluetoothFtpService;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    goto/16 :goto_0

    .line 725
    :catch_1
    move-exception v0

    .line 726
    :try_start_3
    const-string v1, "BluetoothFtpService:RfcommSocketAcceptThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch exception starting obex server session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 730
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 735
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$400(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 736
    const-string v1, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    invoke-virtual {v2}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    const-string v1, "android.bluetooth.device.extra.CLASS_NAME"

    const-class v2, Lcom/android/bluetooth/ftp/BluetoothFtpReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    const/4 v1, 0x1

    #setter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->isWaitingAuthorization:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$802(Lcom/android/bluetooth/ftp/BluetoothFtpService;Z)Z

    .line 742
    const-string v0, "BluetoothFtpService:RfcommSocketAcceptThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting for authorization for connection from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$600(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->this$0:Lcom/android/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/android/bluetooth/ftp/BluetoothFtpService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/ftp/BluetoothFtpService;->access$600(Lcom/android/bluetooth/ftp/BluetoothFtpService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method shutdown()V
    .locals 2

    .prologue
    .line 758
    const-string v0, "BluetoothFtpService:RfcommSocketAcceptThread"

    const-string v1, "Shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->stopped:Z

    .line 760
    invoke-virtual {p0}, Lcom/android/bluetooth/ftp/BluetoothFtpService$RfcommSocketAcceptThread;->interrupt()V

    .line 761
    return-void
.end method