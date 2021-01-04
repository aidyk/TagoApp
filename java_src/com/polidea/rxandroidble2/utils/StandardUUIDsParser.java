package com.polidea.rxandroidble2.utils;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class StandardUUIDsParser {
    private static final Map<String, String> CHARACTERISTIC_UUIDS;
    private static final Map<String, String> DESCRIPTOR_UUIDS;
    private static final Map<String, String> SERVICE_UUIDS;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("1811", "Alert Notification Service");
        hashMap.put("180F", "Battery Service");
        hashMap.put("1810", "Blood Pressure");
        hashMap.put("181B", "Body Composition");
        hashMap.put("181E", "Bond Management");
        hashMap.put("181F", "Continuous Glucose Monitoring");
        hashMap.put("1805", "Current Time Service");
        hashMap.put("1818", "Cycling Power");
        hashMap.put("1816", "Cycling Speed and Cadence");
        hashMap.put("180A", "Device Information");
        hashMap.put("181A", "Environmental Sensing");
        hashMap.put("1800", "Generic Access");
        hashMap.put("1801", "Generic Attribute");
        hashMap.put("1808", "Glucose");
        hashMap.put("1809", "Health Thermometer");
        hashMap.put("180D", "Heart Rate");
        hashMap.put("1812", "Human Interface Device");
        hashMap.put("1802", "Immediate Alert");
        hashMap.put("1803", "Link Loss");
        hashMap.put("1819", "Location and Navigation");
        hashMap.put("1820", "Internet Protocol Support");
        hashMap.put("1807", "Next DST Change Service");
        hashMap.put("180E", "Phone Alert Status Service");
        hashMap.put("1806", "Reference Time Update Service");
        hashMap.put("1814", "Running Speed and Cadence");
        hashMap.put("1813", "Scan Parameters");
        hashMap.put("1804", "Tx Power");
        hashMap.put("181C", "User Data");
        hashMap.put("181D", "Weight Scale");
        hashMap.put("1815", "Automation IO");
        hashMap.put("1802", "Immediate Alert Service 1.1");
        SERVICE_UUIDS = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("2A7E", "Aerobic Heart Rate Lower Limit");
        hashMap2.put("2A84", "Aerobic Heart Rate Upper Limit");
        hashMap2.put("2A7F", "Aerobic Threshold");
        hashMap2.put("2A80", "Age");
        hashMap2.put("2A43", "Alert Category ID");
        hashMap2.put("2A42", "Alert Category ID Bit Mask");
        hashMap2.put("2A06", "Alert Level");
        hashMap2.put("2A44", "Alert Notification Control Point");
        hashMap2.put("2A3F", "Alert Status");
        hashMap2.put("2A81", "Anaerobic Heart Rate Lower Limit");
        hashMap2.put("2A82", "Anaerobic Heart Rate Upper Limit");
        hashMap2.put("2A83", "Anaerobic Threshold");
        hashMap2.put("2A73", "Apparent Wind Direction");
        hashMap2.put("2A72", "Apparent Wind Speed");
        hashMap2.put("2A01", "Appearance");
        hashMap2.put("2AA3", "Barometric Pressure Trend");
        hashMap2.put("2A19", "Battery Level");
        hashMap2.put("2A49", "Blood Pressure Feature");
        hashMap2.put("2A35", "Blood Pressure Measurement");
        hashMap2.put("2A9B", "Body Composition Feature");
        hashMap2.put("2A9C", "Body Composition Measurement");
        hashMap2.put("2A38", "Body Sensor Location");
        hashMap2.put("2AA4", "Bond Management Control Point");
        hashMap2.put("2AA5", "Bond Management Feature");
        hashMap2.put("2A22", "Boot Keyboard Input Report");
        hashMap2.put("2A32", "Boot Keyboard Output Report");
        hashMap2.put("2A33", "Boot Mouse Input Report");
        hashMap2.put("2AA6", "Central Address Resolution");
        hashMap2.put("2AA8", "CGM Feature");
        hashMap2.put("2AA7", "CGM Measurement");
        hashMap2.put("2AAB", "CGM Session Run Time");
        hashMap2.put("2AAA", "CGM Session Start Time");
        hashMap2.put("2AAC", "CGM Specific Ops Control Point");
        hashMap2.put("2AA9", "CGM Status");
        hashMap2.put("2A5C", "CSC Feature");
        hashMap2.put("2A5B", "CSC Measurement");
        hashMap2.put("2A2B", "Current Time");
        hashMap2.put("2A66", "Cycling Power Control Point");
        hashMap2.put("2A65", "Cycling Power Feature");
        hashMap2.put("2A63", "Cycling Power Measurement");
        hashMap2.put("2A64", "Cycling Power Vector");
        hashMap2.put("2A99", "Database Change Increment");
        hashMap2.put("2A85", "Date of Birth");
        hashMap2.put("2A86", "Date of Threshold Assessment ");
        hashMap2.put("2A08", "Date Time");
        hashMap2.put("2A0A", "Day Date Time");
        hashMap2.put("2A09", "Day of Week");
        hashMap2.put("2A7D", "Descriptor Value Changed");
        hashMap2.put("2A00", "Device Name");
        hashMap2.put("2A7B", "Dew Point");
        hashMap2.put("2A0D", "DST Offset");
        hashMap2.put("2A6C", "Elevation");
        hashMap2.put("2A87", "Email Address");
        hashMap2.put("2A0C", "Exact Time 256");
        hashMap2.put("2A88", "Fat Burn Heart Rate Lower Limit");
        hashMap2.put("2A89", "Fat Burn Heart Rate Upper Limit");
        hashMap2.put("2A26", "Firmware Revision String");
        hashMap2.put("2A8A", "First Name");
        hashMap2.put("2A8B", "Five Zone Heart Rate Limits");
        hashMap2.put("2A8C", "Gender");
        hashMap2.put("2A51", "Glucose Feature");
        hashMap2.put("2A18", "Glucose Measurement");
        hashMap2.put("2A34", "Glucose Measurement Context");
        hashMap2.put("2A74", "Gust Factor");
        hashMap2.put("2A27", "Hardware Revision String");
        hashMap2.put("2A39", "Heart Rate Control Point");
        hashMap2.put("2A8D", "Heart Rate Max");
        hashMap2.put("2A37", "Heart Rate Measurement");
        hashMap2.put("2A7A", "Heat Index");
        hashMap2.put("2A8E", "Height");
        hashMap2.put("2A4C", "HID Control Point");
        hashMap2.put("2A4A", "HID Information");
        hashMap2.put("2A8F", "Hip Circumference");
        hashMap2.put("2A6F", "Humidity");
        hashMap2.put("2A2A", "IEEE 11073-20601 Regulatory Certification Data List");
        hashMap2.put("2A36", "Intermediate Cuff Pressure");
        hashMap2.put("2A1E", "Intermediate Temperature");
        hashMap2.put("2A77", "Irradiance");
        hashMap2.put("2AA2", "Language");
        hashMap2.put("2A90", "Last Name");
        hashMap2.put("2A6B", "LN Control Point");
        hashMap2.put("2A6A", "LN Feature");
        hashMap2.put("2A0F", "Local Time Information");
        hashMap2.put("2A67", "Location and Speed");
        hashMap2.put("2A2C", "Magnetic Declination");
        hashMap2.put("2AA0", "Magnetic Flux Density - 2D");
        hashMap2.put("2AA1", "Magnetic Flux Density - 3D");
        hashMap2.put("2A29", "Manufacturer Name String");
        hashMap2.put("2A91", "Maximum Recommended Heart Rate");
        hashMap2.put("2A21", "Measurement Interval");
        hashMap2.put("2A24", "Model Number String");
        hashMap2.put("2A68", "Navigation");
        hashMap2.put("2A46", "New Alert");
        hashMap2.put("2A04", "Peripheral Preferred Connection Parameters");
        hashMap2.put("2A02", "Peripheral Privacy Flag");
        hashMap2.put("2A50", "PnP ID");
        hashMap2.put("2A75", "Pollen Concentration");
        hashMap2.put("2A69", "Position Quality");
        hashMap2.put("2A6D", "Pressure");
        hashMap2.put("2A4E", "Protocol Mode");
        hashMap2.put("2A78", "Rainfall");
        hashMap2.put("2A03", "Reconnection Address");
        hashMap2.put("2A52", "Record Access Control Point");
        hashMap2.put("2A14", "Reference Time Information");
        hashMap2.put("2A4D", "Report");
        hashMap2.put("2A4B", "Report Map");
        hashMap2.put("2A92", "Resting Heart Rate");
        hashMap2.put("2A40", "Ringer Control Point");
        hashMap2.put("2A41", "Ringer Setting");
        hashMap2.put("2A54", "RSC Feature");
        hashMap2.put("2A53", "RSC Measurement");
        hashMap2.put("2A55", "SC Control Point");
        hashMap2.put("2A4F", "Scan Interval Window");
        hashMap2.put("2A31", "Scan Refresh");
        hashMap2.put("2A5D", "Sensor Location");
        hashMap2.put("2A25", "Serial Number String");
        hashMap2.put("2A05", "Service Changed");
        hashMap2.put("2A28", "Software Revision String");
        hashMap2.put("2A93", "Sport Type for Aerobic and Anaerobic Thresholds");
        hashMap2.put("2A47", "Supported New Alert Category");
        hashMap2.put("2A48", "Supported Unread Alert Category");
        hashMap2.put("2A23", "System ID");
        hashMap2.put("2A6E", "Temperature");
        hashMap2.put("2A1C", "Temperature Measurement");
        hashMap2.put("2A1D", "Temperature Type");
        hashMap2.put("2A94", "Three Zone Heart Rate Limits");
        hashMap2.put("2A12", "Time Accuracy");
        hashMap2.put("2A13", "Time Source");
        hashMap2.put("2A16", "Time Update Control Point");
        hashMap2.put("2A17", "Time Update State");
        hashMap2.put("2A11", "Time with DST");
        hashMap2.put("2A0E", "Time Zone");
        hashMap2.put("2A71", "True Wind Direction");
        hashMap2.put("2A70", "True Wind Speed");
        hashMap2.put("2A95", "Two Zone Heart Rate Limit");
        hashMap2.put("2A07", "Tx Power Level");
        hashMap2.put("2A45", "Unread Alert Status");
        hashMap2.put("2A9F", "User Control Point");
        hashMap2.put("2A9A", "User Index");
        hashMap2.put("2A76", "UV Index");
        hashMap2.put("2A96", "VO2 Max");
        hashMap2.put("2A97", "Waist Circumference");
        hashMap2.put("2A98", "Weight");
        hashMap2.put("2A9D", "Weight Measurement");
        hashMap2.put("2A9E", "Weight Scale Feature");
        hashMap2.put("2A79", "Wind Chill");
        hashMap2.put("2A5A", "Aggregate");
        hashMap2.put("2A58", "Analog");
        hashMap2.put("2A56", "Digital");
        CHARACTERISTIC_UUIDS = Collections.unmodifiableMap(hashMap2);
        HashMap hashMap3 = new HashMap();
        hashMap3.put("2900", "Characteristic Extended Properties");
        hashMap3.put("2901", "Characteristic User Description");
        hashMap3.put("2902", "Client Characteristic Configuration");
        hashMap3.put("2903", "Server Characteristic Configuration");
        hashMap3.put("2904", "Characteristic Presentation Format");
        hashMap3.put("2905", "Characteristic Aggregate Format");
        hashMap3.put("2906", "Valid Range");
        hashMap3.put("2907", "External Report Reference");
        hashMap3.put("2908", "Report Reference");
        hashMap3.put("290B", "Environmental Sensing Configuration");
        hashMap3.put("290C", "Environmental Sensing Measurement");
        hashMap3.put("290D", "Environmental Sensing Trigger Setting");
        hashMap3.put("2909", "Number of Digitals");
        hashMap3.put("290A", "Value Trigger Setting");
        hashMap3.put("290E", "Time Trigger Setting");
        DESCRIPTOR_UUIDS = Collections.unmodifiableMap(hashMap3);
    }

    private StandardUUIDsParser() {
    }

    public static String getServiceName(UUID uuid) {
        String standardizedUUIDComponent = getStandardizedUUIDComponent(uuid);
        if (standardizedUUIDComponent != null) {
            return SERVICE_UUIDS.get(standardizedUUIDComponent);
        }
        return null;
    }

    public static String getCharacteristicName(UUID uuid) {
        String standardizedUUIDComponent = getStandardizedUUIDComponent(uuid);
        if (standardizedUUIDComponent != null) {
            return CHARACTERISTIC_UUIDS.get(standardizedUUIDComponent);
        }
        return null;
    }

    public static String getDescriptorName(UUID uuid) {
        String standardizedUUIDComponent = getStandardizedUUIDComponent(uuid);
        if (standardizedUUIDComponent != null) {
            return DESCRIPTOR_UUIDS.get(standardizedUUIDComponent);
        }
        return null;
    }

    private static String getStandardizedUUIDComponent(UUID uuid) {
        String upperCase = uuid.toString().toUpperCase();
        if (isStandardizedUUID(upperCase)) {
            return upperCase.substring(4, 8);
        }
        return null;
    }

    private static boolean isStandardizedUUID(String str) {
        return str.startsWith("0000") && str.endsWith("-0000-1000-8000-00805F9B34FB");
    }
}
