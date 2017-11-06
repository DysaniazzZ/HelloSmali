.class Lcom/dysania/hellosmali/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dysania/hellosmali/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dysania/hellosmali/MainActivity;


# direct methods
.method constructor <init>(Lcom/dysania/hellosmali/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dysania/hellosmali/MainActivity;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dysania/hellosmali/MainActivity$1;->this$0:Lcom/dysania/hellosmali/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 31
    iget-object v0, p0, Lcom/dysania/hellosmali/MainActivity$1;->this$0:Lcom/dysania/hellosmali/MainActivity;

    iget-object v1, p0, Lcom/dysania/hellosmali/MainActivity$1;->this$0:Lcom/dysania/hellosmali/MainActivity;

    invoke-static {v1}, Lcom/dysania/hellosmali/MainActivity;->access$000(Lcom/dysania/hellosmali/MainActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dysania/hellosmali/MainActivity$1;->this$0:Lcom/dysania/hellosmali/MainActivity;

    invoke-static {v2}, Lcom/dysania/hellosmali/MainActivity;->access$100(Lcom/dysania/hellosmali/MainActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dysania/hellosmali/MainActivity;->access$200(Lcom/dysania/hellosmali/MainActivity;Ljava/lang/String;Ljava/lang/String;)Z       # 检查注册码是否合法

    move-result v0

    if-nez v0, :cond_0      # 如果结果不为 0，就跳转到 cond_0 标号处

    .line 32
    iget-object v0, p0, Lcom/dysania/hellosmali/MainActivity$1;->this$0:Lcom/dysania/hellosmali/MainActivity;

    const v1, 0x7f06002b    # unsuccessed 字符串

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/dysania/hellosmali/MainActivity$1;->this$0:Lcom/dysania/hellosmali/MainActivity;

    const v1, 0x7f060029    # successed 字符串

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 35
    iget-object v0, p0, Lcom/dysania/hellosmali/MainActivity$1;->this$0:Lcom/dysania/hellosmali/MainActivity;

    invoke-static {v0}, Lcom/dysania/hellosmali/MainActivity;->access$300(Lcom/dysania/hellosmali/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 36
    iget-object v0, p0, Lcom/dysania/hellosmali/MainActivity$1;->this$0:Lcom/dysania/hellosmali/MainActivity;

    const v1, 0x7f060027    # registered 字符串，模拟注册成功

    invoke-virtual {v0, v1}, Lcom/dysania/hellosmali/MainActivity;->setTitle(I)V

    goto :goto_0
.end method
