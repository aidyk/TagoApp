package com.polidea.rxandroidble2.internal;

import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.ClientScope;
import com.polidea.rxandroidble2.RxBleDevice;
import com.polidea.rxandroidble2.internal.DeviceComponent;
import com.polidea.rxandroidble2.internal.cache.DeviceComponentCache;
import java.util.Map;

@ClientScope
public class RxBleDeviceProvider {
    private final Map<String, DeviceComponent> cachedDeviceComponents;
    private final Provider<DeviceComponent.Builder> deviceComponentBuilder;

    @Inject
    public RxBleDeviceProvider(DeviceComponentCache deviceComponentCache, Provider<DeviceComponent.Builder> provider) {
        this.cachedDeviceComponents = deviceComponentCache;
        this.deviceComponentBuilder = provider;
    }

    public RxBleDevice getBleDevice(String str) {
        DeviceComponent deviceComponent = this.cachedDeviceComponents.get(str);
        if (deviceComponent != null) {
            return deviceComponent.provideDevice();
        }
        synchronized (this.cachedDeviceComponents) {
            DeviceComponent deviceComponent2 = this.cachedDeviceComponents.get(str);
            if (deviceComponent2 != null) {
                return deviceComponent2.provideDevice();
            }
            DeviceComponent build = this.deviceComponentBuilder.get().deviceModule(new DeviceModule(str)).build();
            RxBleDevice provideDevice = build.provideDevice();
            this.cachedDeviceComponents.put(str, build);
            return provideDevice;
        }
    }
}
