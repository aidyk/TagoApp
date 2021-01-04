.class public final Lcom/liber8tech/tago/di/DaggerTagoComponent;
.super Ljava/lang/Object;
.source "DaggerTagoComponent.java"

# interfaces
.implements Lcom/liber8tech/tago/di/TagoComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;
    }
.end annotation


# instance fields
.field private analyticsServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/analytics/AnalyticsService;",
            ">;"
        }
    .end annotation
.end field

.field private authServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/AuthService;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/BluetoothService;",
            ">;"
        }
    .end annotation
.end field

.field private contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private firmwareServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/FirmwareService;",
            ">;"
        }
    .end annotation
.end field

.field private iAPServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/IAPService;",
            ">;"
        }
    .end annotation
.end field

.field private imageEditorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ImageEditorService;",
            ">;"
        }
    .end annotation
.end field

.field private imageSizeStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/ImageSizeStore;",
            ">;"
        }
    .end annotation
.end field

.field private locationServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/LocationService;",
            ">;"
        }
    .end annotation
.end field

.field private profileServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/ProfileService;",
            ">;"
        }
    .end annotation
.end field

.field private provideAuthInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideBleClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideGoogleTrackerXmlProvider:Lcom/liber8tech/tago/di/AnalyticsModule_ProvideGoogleTrackerXmlFactory;

.field private provideHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideRetrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private runtimeConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/util/RuntimeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private storeServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/StoreService;",
            ">;"
        }
    .end annotation
.end field

.field private tagoApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoApiService;",
            ">;"
        }
    .end annotation
.end field

.field private tagoServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->initialize(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;Lcom/liber8tech/tago/di/DaggerTagoComponent$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;-><init>(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;
    .locals 2

    .line 133
    new-instance v0, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;-><init>(Lcom/liber8tech/tago/di/DaggerTagoComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)V
    .locals 4

    .line 139
    invoke-static {p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->access$100(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)Lcom/liber8tech/tago/di/CoreModule;

    move-result-object v0

    invoke-static {v0}, Lcom/liber8tech/tago/di/CoreModule_ContextFactory;->create(Lcom/liber8tech/tago/di/CoreModule;)Lcom/liber8tech/tago/di/CoreModule_ContextFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->contextProvider:Ljavax/inject/Provider;

    .line 140
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->contextProvider:Ljavax/inject/Provider;

    .line 141
    invoke-static {v0}, Lcom/liber8tech/tago/util/RuntimeConfig_Factory;->create(Ljavax/inject/Provider;)Lcom/liber8tech/tago/util/RuntimeConfig_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->runtimeConfigProvider:Ljavax/inject/Provider;

    .line 142
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->contextProvider:Ljavax/inject/Provider;

    .line 143
    invoke-static {v0}, Lcom/liber8tech/tago/service/LocationService_Factory;->create(Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/LocationService_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->locationServiceProvider:Ljavax/inject/Provider;

    .line 147
    invoke-static {p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->access$200(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)Lcom/liber8tech/tago/di/TagoModule;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->runtimeConfigProvider:Ljavax/inject/Provider;

    .line 146
    invoke-static {v0, v1}, Lcom/liber8tech/tago/di/TagoModule_ProvideAuthInterceptorFactory;->create(Lcom/liber8tech/tago/di/TagoModule;Ljavax/inject/Provider;)Lcom/liber8tech/tago/di/TagoModule_ProvideAuthInterceptorFactory;

    move-result-object v0

    .line 145
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideAuthInterceptorProvider:Ljavax/inject/Provider;

    .line 151
    invoke-static {p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->access$200(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)Lcom/liber8tech/tago/di/TagoModule;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideAuthInterceptorProvider:Ljavax/inject/Provider;

    .line 150
    invoke-static {v0, v1}, Lcom/liber8tech/tago/di/TagoModule_ProvideHttpClientFactory;->create(Lcom/liber8tech/tago/di/TagoModule;Ljavax/inject/Provider;)Lcom/liber8tech/tago/di/TagoModule_ProvideHttpClientFactory;

    move-result-object v0

    .line 149
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideHttpClientProvider:Ljavax/inject/Provider;

    .line 155
    invoke-static {p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->access$200(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)Lcom/liber8tech/tago/di/TagoModule;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideHttpClientProvider:Ljavax/inject/Provider;

    .line 154
    invoke-static {v0, v1}, Lcom/liber8tech/tago/di/TagoModule_ProvideRetrofitFactory;->create(Lcom/liber8tech/tago/di/TagoModule;Ljavax/inject/Provider;)Lcom/liber8tech/tago/di/TagoModule_ProvideRetrofitFactory;

    move-result-object v0

    .line 153
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideRetrofitProvider:Ljavax/inject/Provider;

    .line 156
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideRetrofitProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->runtimeConfigProvider:Ljavax/inject/Provider;

    .line 158
    invoke-static {v0, v1, v2}, Lcom/liber8tech/tago/service/ImageEditorService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/ImageEditorService_Factory;

    move-result-object v0

    .line 157
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->imageEditorServiceProvider:Ljavax/inject/Provider;

    .line 161
    invoke-static {p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->access$300(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)Lcom/liber8tech/tago/di/AnalyticsModule;

    move-result-object v0

    invoke-static {v0}, Lcom/liber8tech/tago/di/AnalyticsModule_ProvideGoogleTrackerXmlFactory;->create(Lcom/liber8tech/tago/di/AnalyticsModule;)Lcom/liber8tech/tago/di/AnalyticsModule_ProvideGoogleTrackerXmlFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideGoogleTrackerXmlProvider:Lcom/liber8tech/tago/di/AnalyticsModule_ProvideGoogleTrackerXmlFactory;

    .line 162
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideGoogleTrackerXmlProvider:Lcom/liber8tech/tago/di/AnalyticsModule_ProvideGoogleTrackerXmlFactory;

    .line 164
    invoke-static {v0, v1}, Lcom/liber8tech/tago/analytics/AnalyticsService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/liber8tech/tago/analytics/AnalyticsService_Factory;

    move-result-object v0

    .line 163
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    .line 165
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideRetrofitProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->runtimeConfigProvider:Ljavax/inject/Provider;

    .line 167
    invoke-static {v0, v1, v2}, Lcom/liber8tech/tago/service/FirmwareService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/FirmwareService_Factory;

    move-result-object v0

    .line 166
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->firmwareServiceProvider:Ljavax/inject/Provider;

    .line 169
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideRetrofitProvider:Ljavax/inject/Provider;

    .line 170
    invoke-static {v0}, Lcom/liber8tech/tago/service/StoreService_Factory;->create(Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/StoreService_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->storeServiceProvider:Ljavax/inject/Provider;

    .line 171
    invoke-static {}, Lcom/liber8tech/tago/service/IAPService_Factory;->create()Lcom/liber8tech/tago/service/IAPService_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->iAPServiceProvider:Ljavax/inject/Provider;

    .line 172
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideRetrofitProvider:Ljavax/inject/Provider;

    .line 173
    invoke-static {v0}, Lcom/liber8tech/tago/service/ProfileService_Factory;->create(Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/ProfileService_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->profileServiceProvider:Ljavax/inject/Provider;

    .line 174
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideRetrofitProvider:Ljavax/inject/Provider;

    .line 175
    invoke-static {v0}, Lcom/liber8tech/tago/service/TagoApiService_Factory;->create(Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/TagoApiService_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->tagoApiServiceProvider:Ljavax/inject/Provider;

    .line 177
    invoke-static {p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->access$200(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)Lcom/liber8tech/tago/di/TagoModule;

    move-result-object v0

    invoke-static {v0}, Lcom/liber8tech/tago/di/TagoModule_ProvideBleClientFactory;->create(Lcom/liber8tech/tago/di/TagoModule;)Lcom/liber8tech/tago/di/TagoModule_ProvideBleClientFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideBleClientProvider:Ljavax/inject/Provider;

    .line 179
    invoke-static {p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->access$100(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)Lcom/liber8tech/tago/di/CoreModule;

    move-result-object v0

    invoke-static {v0}, Lcom/liber8tech/tago/di/CoreModule_EventBusFactory;->create(Lcom/liber8tech/tago/di/CoreModule;)Lcom/liber8tech/tago/di/CoreModule_EventBusFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->eventBusProvider:Ljavax/inject/Provider;

    .line 180
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideBleClientProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->runtimeConfigProvider:Ljavax/inject/Provider;

    .line 182
    invoke-static {v0, v1, v2, v3}, Lcom/liber8tech/tago/service/BluetoothService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/BluetoothService_Factory;

    move-result-object v0

    .line 181
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->bluetoothServiceProvider:Ljavax/inject/Provider;

    .line 187
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->tagoApiServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->bluetoothServiceProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->locationServiceProvider:Ljavax/inject/Provider;

    .line 189
    invoke-static {v0, v1, v2}, Lcom/liber8tech/tago/service/TagoService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/TagoService_Factory;

    move-result-object v0

    .line 188
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->tagoServiceProvider:Ljavax/inject/Provider;

    .line 191
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->provideRetrofitProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->runtimeConfigProvider:Ljavax/inject/Provider;

    .line 193
    invoke-static {v0, v1}, Lcom/liber8tech/tago/service/AuthService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/liber8tech/tago/service/AuthService_Factory;

    move-result-object v0

    .line 192
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->authServiceProvider:Ljavax/inject/Provider;

    .line 195
    invoke-static {p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->access$200(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)Lcom/liber8tech/tago/di/TagoModule;

    move-result-object p1

    invoke-static {p1}, Lcom/liber8tech/tago/di/TagoModule_ImageSizeStoreFactory;->create(Lcom/liber8tech/tago/di/TagoModule;)Lcom/liber8tech/tago/di/TagoModule_ImageSizeStoreFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->imageSizeStoreProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectAboutActivity(Lcom/liber8tech/tago/android/activity/AboutActivity;)Lcom/liber8tech/tago/android/activity/AboutActivity;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/AboutActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/AboutActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectAddTagoActivity(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)Lcom/liber8tech/tago/android/activity/AddTagoActivity;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->locationServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/LocationService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->injectLocationService(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Lcom/liber8tech/tago/service/LocationService;)V

    .line 393
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 394
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->imageEditorServiceProvider:Ljavax/inject/Provider;

    .line 395
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ImageEditorService;

    .line 394
    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->injectImageEditorService(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V

    .line 396
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/AddTagoActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectAttachmentActivity(Lcom/liber8tech/tago/android/activity/AttachmentActivity;)Lcom/liber8tech/tago/android/activity/AttachmentActivity;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->imageEditorServiceProvider:Ljavax/inject/Provider;

    .line 488
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ImageEditorService;

    .line 487
    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/AttachmentActivity_MembersInjector;->injectImageEditorService(Lcom/liber8tech/tago/android/activity/AttachmentActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V

    return-object p1
.end method

.method private injectCameraActivity(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/activity/CameraActivity;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->imageEditorServiceProvider:Ljavax/inject/Provider;

    .line 424
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ImageEditorService;

    .line 423
    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/CameraActivity_MembersInjector;->injectImageEditorService(Lcom/liber8tech/tago/android/activity/CameraActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V

    .line 425
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/CameraActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/CameraActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectChangePasswordActivity(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->authServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/AuthService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity_MembersInjector;->injectAuthService(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;Lcom/liber8tech/tago/service/AuthService;)V

    .line 375
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    .line 376
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    .line 375
    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ChangePasswordActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectContactUsActivity(Lcom/liber8tech/tago/android/activity/ContactUsActivity;)Lcom/liber8tech/tago/android/activity/ContactUsActivity;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ContactUsActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/ContactUsActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectForgetPasswordActivity(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;)Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->authServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/AuthService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity_MembersInjector;->injectAuthService(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;Lcom/liber8tech/tago/service/AuthService;)V

    .line 462
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    .line 463
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    .line 462
    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectImageEditorActivity(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivity;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->imageEditorServiceProvider:Ljavax/inject/Provider;

    .line 431
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ImageEditorService;

    .line 430
    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity_MembersInjector;->injectImageEditorService(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V

    return-object p1
.end method

.method private injectIntroActivity(Lcom/liber8tech/tago/android/activity/IntroActivity;)Lcom/liber8tech/tago/android/activity/IntroActivity;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->runtimeConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/IntroActivity_MembersInjector;->injectRunTimeConfig(Lcom/liber8tech/tago/android/activity/IntroActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    .line 363
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->authServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/AuthService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/IntroActivity_MembersInjector;->injectAuthService(Lcom/liber8tech/tago/android/activity/IntroActivity;Lcom/liber8tech/tago/service/AuthService;)V

    return-object p1
.end method

.method private injectKioskActivity(Lcom/liber8tech/tago/android/activity/KioskActivity;)Lcom/liber8tech/tago/android/activity/KioskActivity;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->locationServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/LocationService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;->injectLocationService(Lcom/liber8tech/tago/android/activity/KioskActivity;Lcom/liber8tech/tago/service/LocationService;)V

    .line 469
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/KioskActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 470
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->bluetoothServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/BluetoothService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;->injectBluetoothService(Lcom/liber8tech/tago/android/activity/KioskActivity;Lcom/liber8tech/tago/service/BluetoothService;)V

    return-object p1
.end method

.method private injectMainActivity(Lcom/liber8tech/tago/android/activity/MainActivity;)Lcom/liber8tech/tago/android/activity/MainActivity;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->runtimeConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectRuntimeConfig(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    .line 325
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->locationServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/LocationService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectLocationService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/LocationService;)V

    .line 326
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->imageEditorServiceProvider:Ljavax/inject/Provider;

    .line 327
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ImageEditorService;

    .line 326
    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectImageEditorService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V

    .line 328
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    .line 329
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->firmwareServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/FirmwareService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectFirmwareService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/FirmwareService;)V

    .line 330
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->storeServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/StoreService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectStoreService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/StoreService;)V

    .line 331
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->iAPServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/IAPService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectIapService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/IAPService;)V

    .line 332
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->profileServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ProfileService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectProfileService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/ProfileService;)V

    .line 333
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/MainActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/MainActivity;Lcom/liber8tech/tago/service/TagoService;)V

    return-object p1
.end method

.method private injectPackActivity(Lcom/liber8tech/tago/android/activity/PackActivity;)Lcom/liber8tech/tago/android/activity/PackActivity;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->iAPServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/IAPService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/PackActivity_MembersInjector;->injectIapService(Lcom/liber8tech/tago/android/activity/PackActivity;Lcom/liber8tech/tago/service/IAPService;)V

    .line 455
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->imageEditorServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/PackActivity_MembersInjector;->injectImageService(Lcom/liber8tech/tago/android/activity/PackActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V

    .line 456
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/PackActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/PackActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectProfileActivity(Lcom/liber8tech/tago/android/activity/ProfileActivity;)Lcom/liber8tech/tago/android/activity/ProfileActivity;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->profileServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ProfileService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;->injectProfileService(Lcom/liber8tech/tago/android/activity/ProfileActivity;Lcom/liber8tech/tago/service/ProfileService;)V

    .line 476
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/ProfileActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    .line 477
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->runtimeConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ProfileActivity_MembersInjector;->injectRuntimeConfig(Lcom/liber8tech/tago/android/activity/ProfileActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    return-object p1
.end method

.method private injectResetActivity(Lcom/liber8tech/tago/android/activity/ResetActivity;)Lcom/liber8tech/tago/android/activity/ResetActivity;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ResetActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/ResetActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectResetChooseDeviceActivity(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;)Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->tagoServiceProvider:Ljavax/inject/Provider;

    .line 409
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    .line 408
    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 410
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->bluetoothServiceProvider:Ljavax/inject/Provider;

    .line 411
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/BluetoothService;

    .line 410
    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity_MembersInjector;->injectBluetoothService(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;Lcom/liber8tech/tago/service/BluetoothService;)V

    return-object p1
.end method

.method private injectResetSyncActivity(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)Lcom/liber8tech/tago/android/activity/ResetSyncActivity;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->bluetoothServiceProvider:Ljavax/inject/Provider;

    .line 417
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/BluetoothService;

    .line 416
    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity_MembersInjector;->injectBluetoothService(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;Lcom/liber8tech/tago/service/BluetoothService;)V

    .line 418
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectSelectTagoActivity(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)Lcom/liber8tech/tago/android/activity/SelectTagoActivity;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->bluetoothServiceProvider:Ljavax/inject/Provider;

    .line 339
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/BluetoothService;

    .line 338
    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->injectBluetoothService(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Lcom/liber8tech/tago/service/BluetoothService;)V

    .line 340
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 341
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->runtimeConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->injectRuntimeConfig(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    .line 342
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectSettingsActivity(Lcom/liber8tech/tago/android/activity/SettingsActivity;)Lcom/liber8tech/tago/android/activity/SettingsActivity;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->runtimeConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->injectRuntimeConfig(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    .line 382
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 383
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->imageEditorServiceProvider:Ljavax/inject/Provider;

    .line 384
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ImageEditorService;

    .line 383
    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->injectImageEditorService(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V

    .line 385
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->storeServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/StoreService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->injectStoreService(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/service/StoreService;)V

    .line 386
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->iAPServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/IAPService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->injectIapService(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/service/IAPService;)V

    .line 387
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/SettingsActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectSignInActivity(Lcom/liber8tech/tago/android/activity/SignInActivity;)Lcom/liber8tech/tago/android/activity/SignInActivity;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->authServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/AuthService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;->injectAuthService(Lcom/liber8tech/tago/android/activity/SignInActivity;Lcom/liber8tech/tago/service/AuthService;)V

    .line 356
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/SignInActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 357
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SignInActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/SignInActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectSignUpActivity(Lcom/liber8tech/tago/android/activity/SignUpActivity;)Lcom/liber8tech/tago/android/activity/SignUpActivity;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->authServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/AuthService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SignUpActivity_MembersInjector;->injectAuthService(Lcom/liber8tech/tago/android/activity/SignUpActivity;Lcom/liber8tech/tago/service/AuthService;)V

    .line 369
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SignUpActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/SignUpActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectStoreActivity(Lcom/liber8tech/tago/android/activity/StoreActivity;)Lcom/liber8tech/tago/android/activity/StoreActivity;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->storeServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/StoreService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->injectStoreService(Lcom/liber8tech/tago/android/activity/StoreActivity;Lcom/liber8tech/tago/service/StoreService;)V

    .line 437
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->iAPServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/IAPService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->injectIapService(Lcom/liber8tech/tago/android/activity/StoreActivity;Lcom/liber8tech/tago/service/IAPService;)V

    .line 438
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->imageEditorServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/ImageEditorService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->injectImageService(Lcom/liber8tech/tago/android/activity/StoreActivity;Lcom/liber8tech/tago/service/ImageEditorService;)V

    .line 439
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/StoreActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/StoreActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectSyncActivity(Lcom/liber8tech/tago/android/activity/SyncActivity;)Lcom/liber8tech/tago/android/activity/SyncActivity;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->bluetoothServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/BluetoothService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SyncActivity_MembersInjector;->injectBluetoothService(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/service/BluetoothService;)V

    .line 348
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SyncActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 349
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->firmwareServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/FirmwareService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SyncActivity_MembersInjector;->injectFirmwareService(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/service/FirmwareService;)V

    .line 350
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/SyncActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectTagoApplication(Lcom/liber8tech/tago/android/TagoApplication;)Lcom/liber8tech/tago/android/TagoApplication;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->runtimeConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/RuntimeConfig;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/TagoApplication_MembersInjector;->injectRuntimeConfig(Lcom/liber8tech/tago/android/TagoApplication;Lcom/liber8tech/tago/util/RuntimeConfig;)V

    .line 494
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/TagoApplication_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/TagoApplication;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method

.method private injectTagoDetailsActivity(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 402
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity_MembersInjector;->injectAnalytics(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Lcom/liber8tech/tago/analytics/AnalyticsService;)V

    return-object p1
.end method


# virtual methods
.method public imageSizeStore()Lcom/liber8tech/tago/util/ImageSizeStore;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent;->imageSizeStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/util/ImageSizeStore;

    return-object v0
.end method

.method public inject(Lcom/liber8tech/tago/android/TagoApplication;)V
    .locals 0

    .line 315
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectTagoApplication(Lcom/liber8tech/tago/android/TagoApplication;)Lcom/liber8tech/tago/android/TagoApplication;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/AboutActivity;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectAboutActivity(Lcom/liber8tech/tago/android/activity/AboutActivity;)Lcom/liber8tech/tago/android/activity/AboutActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectAddTagoActivity(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)Lcom/liber8tech/tago/android/activity/AddTagoActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/AttachmentActivity;)V
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectAttachmentActivity(Lcom/liber8tech/tago/android/activity/AttachmentActivity;)Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/CameraActivity;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectCameraActivity(Lcom/liber8tech/tago/android/activity/CameraActivity;)Lcom/liber8tech/tago/android/activity/CameraActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectChangePasswordActivity(Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;)Lcom/liber8tech/tago/android/activity/ChangePasswordActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/ContactUsActivity;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectContactUsActivity(Lcom/liber8tech/tago/android/activity/ContactUsActivity;)Lcom/liber8tech/tago/android/activity/ContactUsActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;)V
    .locals 0

    .line 290
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectForgetPasswordActivity(Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;)Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectImageEditorActivity(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/IntroActivity;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectIntroActivity(Lcom/liber8tech/tago/android/activity/IntroActivity;)Lcom/liber8tech/tago/android/activity/IntroActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/KioskActivity;)V
    .locals 0

    .line 295
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectKioskActivity(Lcom/liber8tech/tago/android/activity/KioskActivity;)Lcom/liber8tech/tago/android/activity/KioskActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/MainActivity;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectMainActivity(Lcom/liber8tech/tago/android/activity/MainActivity;)Lcom/liber8tech/tago/android/activity/MainActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/PackActivity;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectPackActivity(Lcom/liber8tech/tago/android/activity/PackActivity;)Lcom/liber8tech/tago/android/activity/PackActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/ProfileActivity;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectProfileActivity(Lcom/liber8tech/tago/android/activity/ProfileActivity;)Lcom/liber8tech/tago/android/activity/ProfileActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/ResetActivity;)V
    .locals 0

    .line 280
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectResetActivity(Lcom/liber8tech/tago/android/activity/ResetActivity;)Lcom/liber8tech/tago/android/activity/ResetActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectResetChooseDeviceActivity(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;)Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V
    .locals 0

    .line 255
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectResetSyncActivity(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)Lcom/liber8tech/tago/android/activity/ResetSyncActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectSelectTagoActivity(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectSettingsActivity(Lcom/liber8tech/tago/android/activity/SettingsActivity;)Lcom/liber8tech/tago/android/activity/SettingsActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/SignInActivity;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectSignInActivity(Lcom/liber8tech/tago/android/activity/SignInActivity;)Lcom/liber8tech/tago/android/activity/SignInActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/SignUpActivity;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectSignUpActivity(Lcom/liber8tech/tago/android/activity/SignUpActivity;)Lcom/liber8tech/tago/android/activity/SignUpActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/StoreActivity;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectStoreActivity(Lcom/liber8tech/tago/android/activity/StoreActivity;)Lcom/liber8tech/tago/android/activity/StoreActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/SyncActivity;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectSyncActivity(Lcom/liber8tech/tago/android/activity/SyncActivity;)Lcom/liber8tech/tago/android/activity/SyncActivity;

    return-void
.end method

.method public inject(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->injectTagoDetailsActivity(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    return-void
.end method
