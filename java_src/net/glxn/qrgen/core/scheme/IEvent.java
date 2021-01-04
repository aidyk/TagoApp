package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class IEvent extends SubSchema {
    private static final String BEGIN_EVENT = "BEGIN:VEVENT";
    private static final String END = "DTEND";
    public static final String NAME = "VEVENT";
    private static final String ORGANIZER = "ORGANIZER";
    private static final String STAMP = "DTSTAMP";
    private static final String START = "DTSTART";
    private static final String SUMMARY = "SUMMARY";
    private static final String UID = "UID";
    private String end;
    private String organizer;
    private String stamp;
    private String start;
    private String summary;
    private String uid;

    public String getUid() {
        return this.uid;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public String getStamp() {
        return this.stamp;
    }

    public void setStamp(String str) {
        this.stamp = str;
    }

    public String getOrganizer() {
        return this.organizer;
    }

    public void setOrganizer(String str) {
        this.organizer = str;
    }

    public String getStart() {
        return this.start;
    }

    public void setStart(String str) {
        this.start = str;
    }

    public String getEnd() {
        return this.end;
    }

    public void setEnd(String str) {
        this.end = str;
    }

    public String getSummary() {
        return this.summary;
    }

    public void setSummary(String str) {
        this.summary = str;
    }

    @Override // net.glxn.qrgen.core.scheme.SubSchema
    public SubSchema parseSchema(Map<String, String> map, String str) {
        if (map.containsKey(UID)) {
            setUid(map.get(UID));
        }
        if (map.containsKey(STAMP)) {
            setStamp(map.get(STAMP));
        }
        if (map.containsKey(START)) {
            setStart(map.get(START));
        }
        if (map.containsKey(END)) {
            setEnd(map.get(END));
        }
        if (map.containsKey(SUMMARY)) {
            setSummary(map.get(SUMMARY));
        }
        SchemeUtil.getParameters(str);
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.SubSchema
    public String generateString() {
        StringBuilder sb = new StringBuilder();
        sb.append(BEGIN_EVENT);
        sb.append("\n");
        if (this.uid != null) {
            sb.append(UID);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.uid);
            sb.append("\n");
        } else if (this.stamp != null) {
            sb.append(STAMP);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.stamp);
            sb.append("\n");
        } else if (this.organizer != null) {
            sb.append(ORGANIZER);
            sb.append(";");
            sb.append(this.organizer);
            sb.append("\n");
        } else if (this.start != null) {
            sb.append(START);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.start);
            sb.append("\n");
        } else if (this.end != null) {
            sb.append(END);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.end);
            sb.append("\n");
        } else if (this.summary != null) {
            sb.append(SUMMARY);
            sb.append(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR);
            sb.append(this.summary);
            sb.append("\n");
        }
        sb.append("\n");
        sb.append("END:VEVENT");
        return sb.toString();
    }

    public String toString() {
        return generateString();
    }

    public static IEvent parse(Map<String, String> map, String str) {
        IEvent iEvent = new IEvent();
        iEvent.parseSchema(map, str);
        return iEvent;
    }
}
