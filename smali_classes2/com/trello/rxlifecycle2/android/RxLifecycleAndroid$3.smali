.class synthetic Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;
.super Ljava/lang/Object;
.source "RxLifecycleAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$trello$rxlifecycle2$android$ActivityEvent:[I

.field static final synthetic $SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 124
    invoke-static {}, Lcom/trello/rxlifecycle2/android/FragmentEvent;->values()[Lcom/trello/rxlifecycle2/android/FragmentEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent:[I

    sget-object v2, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ATTACH:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {v2}, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent:[I

    sget-object v3, Lcom/trello/rxlifecycle2/android/FragmentEvent;->CREATE:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {v3}, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent:[I

    sget-object v4, Lcom/trello/rxlifecycle2/android/FragmentEvent;->CREATE_VIEW:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {v4}, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent:[I

    sget-object v5, Lcom/trello/rxlifecycle2/android/FragmentEvent;->START:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {v5}, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent:[I

    sget-object v6, Lcom/trello/rxlifecycle2/android/FragmentEvent;->RESUME:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {v6}, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent:[I

    sget-object v7, Lcom/trello/rxlifecycle2/android/FragmentEvent;->PAUSE:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {v7}, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v6, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent:[I

    sget-object v7, Lcom/trello/rxlifecycle2/android/FragmentEvent;->STOP:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {v7}, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v6, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent:[I

    sget-object v7, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DESTROY_VIEW:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {v7}, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ordinal()I

    move-result v7

    const/16 v8, 0x8

    aput v8, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v6, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent:[I

    sget-object v7, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DESTROY:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {v7}, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ordinal()I

    move-result v7

    const/16 v8, 0x9

    aput v8, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent:[I

    sget-object v7, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DETACH:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {v7}, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ordinal()I

    move-result v7

    const/16 v8, 0xa

    aput v8, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 100
    :catch_9
    invoke-static {}, Lcom/trello/rxlifecycle2/android/ActivityEvent;->values()[Lcom/trello/rxlifecycle2/android/ActivityEvent;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$ActivityEvent:[I

    :try_start_a
    sget-object v6, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$ActivityEvent:[I

    sget-object v7, Lcom/trello/rxlifecycle2/android/ActivityEvent;->CREATE:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-virtual {v7}, Lcom/trello/rxlifecycle2/android/ActivityEvent;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$ActivityEvent:[I

    sget-object v6, Lcom/trello/rxlifecycle2/android/ActivityEvent;->START:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-virtual {v6}, Lcom/trello/rxlifecycle2/android/ActivityEvent;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$ActivityEvent:[I

    sget-object v1, Lcom/trello/rxlifecycle2/android/ActivityEvent;->RESUME:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle2/android/ActivityEvent;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$ActivityEvent:[I

    sget-object v1, Lcom/trello/rxlifecycle2/android/ActivityEvent;->PAUSE:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle2/android/ActivityEvent;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$ActivityEvent:[I

    sget-object v1, Lcom/trello/rxlifecycle2/android/ActivityEvent;->STOP:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle2/android/ActivityEvent;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$ActivityEvent:[I

    sget-object v1, Lcom/trello/rxlifecycle2/android/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle2/android/ActivityEvent;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
