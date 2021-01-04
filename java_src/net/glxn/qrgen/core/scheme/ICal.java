package net.glxn.qrgen.core.scheme;

import java.util.Map;

public class ICal extends Schema {
    private static final String BEGIN_VCALENDAR = "BEGIN:VCALENDAR";
    private SubSchema subSchema;

    private ICal() {
    }

    public ICal(IEvent iEvent) {
        this();
        this.subSchema = iEvent;
    }

    public ICal(IToDo iToDo) {
        this();
        this.subSchema = iToDo;
    }

    public ICal(IJournal iJournal) {
        this();
        this.subSchema = iJournal;
    }

    public ICal(IFreeBusyTime iFreeBusyTime) {
        this();
        this.subSchema = iFreeBusyTime;
    }

    public SubSchema getSubSchema() {
        return this.subSchema;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public Schema parseSchema(String str) {
        if (str == null || !str.startsWith(BEGIN_VCALENDAR)) {
            throw new IllegalArgumentException("this is not a valid ICal code: " + str);
        }
        Map<String, String> parameters = SchemeUtil.getParameters(str);
        if (parameters.containsKey(IEvent.NAME)) {
            this.subSchema = IEvent.parse(parameters, str);
        }
        if (parameters.containsKey(IToDo.NAME)) {
            this.subSchema = IToDo.parse(parameters, str);
        }
        if (parameters.containsKey(IJournal.NAME)) {
            this.subSchema = IJournal.parse(parameters, str);
        }
        if (parameters.containsKey(IFreeBusyTime.NAME)) {
            this.subSchema = IFreeBusyTime.parse(parameters, str);
        }
        return this;
    }

    @Override // net.glxn.qrgen.core.scheme.Schema
    public String generateString() {
        StringBuilder sb = new StringBuilder();
        sb.append(BEGIN_VCALENDAR);
        sb.append("\n");
        sb.append("VERSION:2.0");
        sb.append("\n");
        sb.append("PRODID:-//hacksw/handcal//NONSGML v1.0//EN");
        sb.append("\n");
        if (this.subSchema != null) {
            sb.append(this.subSchema.generateString());
        }
        sb.append("\n");
        sb.append("END:VCALENDAR");
        return sb.toString();
    }

    public String toString() {
        return generateString();
    }

    public static ICal parse(String str) {
        ICal iCal = new ICal();
        iCal.parseSchema(str);
        return iCal;
    }
}
