.class public Lcom/dysania/hellosmali/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private btn_register:Landroid/widget/Button;

.field private et_name:Landroid/widget/EditText;

.field private et_sn:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dysania/hellosmali/MainActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/dysania/hellosmali/MainActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dysania/hellosmali/MainActivity;->et_name:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dysania/hellosmali/MainActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/dysania/hellosmali/MainActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dysania/hellosmali/MainActivity;->et_sn:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dysania/hellosmali/MainActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dysania/hellosmali/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/dysania/hellosmali/MainActivity;->checkSN(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/dysania/hellosmali/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/dysania/hellosmali/MainActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dysania/hellosmali/MainActivity;->btn_register:Landroid/widget/Button;

    return-object v0
.end method

.method private checkSN(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "sn"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 44
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v7

    .line 47
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_0

    .line 50
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 51
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 53
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 54
    .local v0, "bytes":[B
    invoke-direct {p0, v0}, Lcom/dysania/hellosmali/MainActivity;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "hexStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "userSN":Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    const/4 v7, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "bytes":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hexStr":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "userSN":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private toHexString([B)Ljava/lang/String;
    .locals 8
    .param p1, "array"    # [B

    .prologue
    const/4 v3, 0x0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p1, v2

    .line 73
    .local v0, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/dysania/hellosmali/MainActivity;->setContentView(I)V

    .line 24
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/dysania/hellosmali/MainActivity;->setTitle(I)V

    .line 25
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/dysania/hellosmali/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dysania/hellosmali/MainActivity;->et_name:Landroid/widget/EditText;

    .line 26
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/dysania/hellosmali/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dysania/hellosmali/MainActivity;->et_sn:Landroid/widget/EditText;

    .line 27
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lcom/dysania/hellosmali/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dysania/hellosmali/MainActivity;->btn_register:Landroid/widget/Button;

    .line 28
    iget-object v0, p0, Lcom/dysania/hellosmali/MainActivity;->btn_register:Landroid/widget/Button;

    new-instance v1, Lcom/dysania/hellosmali/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/dysania/hellosmali/MainActivity$1;-><init>(Lcom/dysania/hellosmali/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method
