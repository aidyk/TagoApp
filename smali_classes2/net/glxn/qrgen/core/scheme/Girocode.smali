.class public Lnet/glxn/qrgen/core/scheme/Girocode;
.super Lnet/glxn/qrgen/core/scheme/Schema;
.source "Girocode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/glxn/qrgen/core/scheme/Girocode$Encoding;
    }
.end annotation


# static fields
.field protected static final FUNCTION_SEPA_CREDIT_TRANSFER:Ljava/lang/String; = "SCT"

.field protected static final SERVICE_HEADER:Ljava/lang/String; = "BCD"

.field protected static final VERSION_1:Ljava/lang/String; = "001"


# instance fields
.field private amount:Ljava/lang/String;

.field private bic:Ljava/lang/String;

.field private encoding:Lnet/glxn/qrgen/core/scheme/Girocode$Encoding;

.field private hint:Ljava/lang/String;

.field private iban:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private purposeCode:Ljava/lang/String;

.field private reference:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lnet/glxn/qrgen/core/scheme/Schema;-><init>()V

    return-void
.end method

.method private nullToEmptyString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static parse(Ljava/lang/String;)Lnet/glxn/qrgen/core/scheme/Girocode;
    .locals 1

    .line 182
    new-instance v0, Lnet/glxn/qrgen/core/scheme/Girocode;

    invoke-direct {v0}, Lnet/glxn/qrgen/core/scheme/Girocode;-><init>()V

    .line 183
    invoke-virtual {v0, p0}, Lnet/glxn/qrgen/core/scheme/Girocode;->parseSchema(Ljava/lang/String;)Lnet/glxn/qrgen/core/scheme/Schema;

    return-object v0
.end method


# virtual methods
.method public generateString()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BCD"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "001"

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p0}, Lnet/glxn/qrgen/core/scheme/Girocode;->getEncoding()Lnet/glxn/qrgen/core/scheme/Girocode$Encoding;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/glxn/qrgen/core/scheme/Girocode;->nullToEmptyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SCT"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lnet/glxn/qrgen/core/scheme/Girocode;->getBic()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/glxn/qrgen/core/scheme/Girocode;->nullToEmptyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Lnet/glxn/qrgen/core/scheme/Girocode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/glxn/qrgen/core/scheme/Girocode;->nullToEmptyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lnet/glxn/qrgen/core/scheme/Girocode;->getIban()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/glxn/qrgen/core/scheme/Girocode;->nullToEmptyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0}, Lnet/glxn/qrgen/core/scheme/Girocode;->getAmount()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/glxn/qrgen/core/scheme/Girocode;->nullToEmptyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Lnet/glxn/qrgen/core/scheme/Girocode;->getPurposeCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/glxn/qrgen/core/scheme/Girocode;->nullToEmptyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Lnet/glxn/qrgen/core/scheme/Girocode;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/glxn/qrgen/core/scheme/Girocode;->nullToEmptyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Lnet/glxn/qrgen/core/scheme/Girocode;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/glxn/qrgen/core/scheme/Girocode;->nullToEmptyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Lnet/glxn/qrgen/core/scheme/Girocode;->getHint()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/glxn/qrgen/core/scheme/Girocode;->nullToEmptyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getBic()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->bic:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Lnet/glxn/qrgen/core/scheme/Girocode$Encoding;
    .locals 1

    .line 108
    iget-object v0, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->encoding:Lnet/glxn/qrgen/core/scheme/Girocode$Encoding;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public getIban()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->iban:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPurposeCode()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->purposeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->text:Ljava/lang/String;

    return-object v0
.end method

.method public parseSchema(Ljava/lang/String;)Lnet/glxn/qrgen/core/scheme/Schema;
    .locals 4

    if-eqz p1, :cond_6

    const-string v0, "\r?\n"

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_5

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v3, "SERVICE_HEADER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 p1, 0x2

    .line 132
    aget-object p1, v0, p1

    invoke-static {p1}, Lnet/glxn/qrgen/core/scheme/Girocode$Encoding;->encodingFor(Ljava/lang/String;)Lnet/glxn/qrgen/core/scheme/Girocode$Encoding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/glxn/qrgen/core/scheme/Girocode;->setEncoding(Lnet/glxn/qrgen/core/scheme/Girocode$Encoding;)V

    const/4 p1, 0x4

    .line 133
    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lnet/glxn/qrgen/core/scheme/Girocode;->setBic(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 134
    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lnet/glxn/qrgen/core/scheme/Girocode;->setName(Ljava/lang/String;)V

    .line 135
    aget-object p1, v0, v2

    invoke-virtual {p0, p1}, Lnet/glxn/qrgen/core/scheme/Girocode;->setIban(Ljava/lang/String;)V

    .line 136
    array-length p1, v0

    const/4 v1, 0x7

    if-le p1, v1, :cond_0

    .line 137
    aget-object p1, v0, v1

    invoke-virtual {p0, p1}, Lnet/glxn/qrgen/core/scheme/Girocode;->setAmount(Ljava/lang/String;)V

    .line 139
    :cond_0
    array-length p1, v0

    const/16 v1, 0x8

    if-le p1, v1, :cond_1

    .line 140
    aget-object p1, v0, v1

    invoke-virtual {p0, p1}, Lnet/glxn/qrgen/core/scheme/Girocode;->setPurposeCode(Ljava/lang/String;)V

    .line 142
    :cond_1
    array-length p1, v0

    const/16 v1, 0x9

    if-le p1, v1, :cond_2

    .line 143
    aget-object p1, v0, v1

    invoke-virtual {p0, p1}, Lnet/glxn/qrgen/core/scheme/Girocode;->setReference(Ljava/lang/String;)V

    .line 145
    :cond_2
    array-length p1, v0

    const/16 v1, 0xa

    if-le p1, v1, :cond_3

    .line 146
    aget-object p1, v0, v1

    invoke-virtual {p0, p1}, Lnet/glxn/qrgen/core/scheme/Girocode;->setText(Ljava/lang/String;)V

    .line 148
    :cond_3
    array-length p1, v0

    const/16 v1, 0xb

    if-le p1, v1, :cond_4

    .line 149
    aget-object p1, v0, v1

    invoke-virtual {p0, p1}, Lnet/glxn/qrgen/core/scheme/Girocode;->setHint(Ljava/lang/String;)V

    :cond_4
    return-object p0

    .line 130
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this is not a valid Girocode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this is not a valid Girocode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->amount:Ljava/lang/String;

    return-void
.end method

.method public setBic(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->bic:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Lnet/glxn/qrgen/core/scheme/Girocode$Encoding;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->encoding:Lnet/glxn/qrgen/core/scheme/Girocode$Encoding;

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->hint:Ljava/lang/String;

    return-void
.end method

.method public setIban(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->iban:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->name:Ljava/lang/String;

    return-void
.end method

.method public setPurposeCode(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->purposeCode:Ljava/lang/String;

    return-void
.end method

.method public setReference(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->reference:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lnet/glxn/qrgen/core/scheme/Girocode;->text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lnet/glxn/qrgen/core/scheme/Girocode;->generateString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
