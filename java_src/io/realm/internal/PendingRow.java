package io.realm.internal;

import io.realm.RealmChangeListener;
import io.realm.RealmFieldType;
import java.lang.ref.WeakReference;
import java.util.Date;
import javax.annotation.Nullable;

public class PendingRow implements Row {
    private static final String PROXY_NOT_SET_MESSAGE = "The 'frontEnd' has not been set.";
    private static final String QUERY_EXECUTED_MESSAGE = "The query has been executed. This 'PendingRow' is not valid anymore.";
    private static final String QUERY_NOT_RETURNED_MESSAGE = "The pending query has not been executed.";
    private WeakReference<FrontEnd> frontEndRef;
    private RealmChangeListener<PendingRow> listener = new RealmChangeListener<PendingRow>() {
        /* class io.realm.internal.PendingRow.AnonymousClass1 */

        public void onChange(PendingRow pendingRow) {
            PendingRow.this.notifyFrontEnd();
        }
    };
    private OsResults pendingOsResults;
    private boolean returnCheckedRow;
    private OsSharedRealm sharedRealm;

    public interface FrontEnd {
        void onQueryFinished(Row row);
    }

    @Override // io.realm.internal.Row
    public boolean isAttached() {
        return false;
    }

    public PendingRow(OsSharedRealm osSharedRealm, TableQuery tableQuery, @Nullable SortDescriptor sortDescriptor, boolean z) {
        this.sharedRealm = osSharedRealm;
        this.pendingOsResults = OsResults.createFromQuery(osSharedRealm, tableQuery, sortDescriptor, null);
        this.pendingOsResults.addListener(this, this.listener);
        this.returnCheckedRow = z;
        osSharedRealm.addPendingRow(this);
    }

    public void setFrontEnd(FrontEnd frontEnd) {
        this.frontEndRef = new WeakReference<>(frontEnd);
    }

    @Override // io.realm.internal.Row
    public long getColumnCount() {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public String getColumnName(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public long getColumnIndex(String str) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public RealmFieldType getColumnType(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public Table getTable() {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public long getIndex() {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public long getLong(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public boolean getBoolean(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public float getFloat(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public double getDouble(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public Date getDate(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public String getString(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public byte[] getBinaryByteArray(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public long getLink(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public boolean isNullLink(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public OsList getModelList(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public OsList getValueList(long j, RealmFieldType realmFieldType) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setLong(long j, long j2) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setBoolean(long j, boolean z) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setFloat(long j, float f) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setDouble(long j, double d) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setDate(long j, Date date) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setString(long j, String str) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setBinaryByteArray(long j, byte[] bArr) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setLink(long j, long j2) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void nullifyLink(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public boolean isNull(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void setNull(long j) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public void checkIfAttached() {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    @Override // io.realm.internal.Row
    public boolean hasColumn(String str) {
        throw new IllegalStateException(QUERY_NOT_RETURNED_MESSAGE);
    }

    private void clearPendingCollection() {
        this.pendingOsResults.removeListener(this, this.listener);
        this.pendingOsResults = null;
        this.listener = null;
        this.sharedRealm.removePendingRow(this);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void notifyFrontEnd() {
        if (this.frontEndRef != null) {
            FrontEnd frontEnd = this.frontEndRef.get();
            if (frontEnd == null) {
                clearPendingCollection();
            } else if (this.pendingOsResults.isValid()) {
                UncheckedRow firstUncheckedRow = this.pendingOsResults.firstUncheckedRow();
                clearPendingCollection();
                if (firstUncheckedRow != null) {
                    if (this.returnCheckedRow) {
                        firstUncheckedRow = CheckedRow.getFromRow(firstUncheckedRow);
                    }
                    frontEnd.onQueryFinished(firstUncheckedRow);
                    return;
                }
                frontEnd.onQueryFinished(InvalidRow.INSTANCE);
            } else {
                clearPendingCollection();
            }
        } else {
            throw new IllegalStateException(PROXY_NOT_SET_MESSAGE);
        }
    }

    public void executeQuery() {
        if (this.pendingOsResults != null) {
            notifyFrontEnd();
            return;
        }
        throw new IllegalStateException(QUERY_EXECUTED_MESSAGE);
    }
}
