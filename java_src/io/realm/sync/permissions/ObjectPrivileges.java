package io.realm.sync.permissions;

import io.realm.internal.annotations.ObjectServer;

@ObjectServer
public final class ObjectPrivileges {
    private boolean canCreate;
    private boolean canDelete;
    private boolean canModifySchema;
    private boolean canQuery;
    private boolean canRead;
    private boolean canSetPermissions;
    private boolean canUpdate;

    public ObjectPrivileges(long j) {
        boolean z = false;
        this.canRead = (1 & j) != 0;
        this.canUpdate = (2 & j) != 0;
        this.canDelete = (4 & j) != 0;
        this.canSetPermissions = (8 & j) != 0;
        this.canQuery = (16 & j) != 0;
        this.canCreate = (32 & j) != 0;
        this.canModifySchema = (j & 64) != 0 ? true : z;
    }

    public boolean canRead() {
        return this.canRead;
    }

    public boolean canUpdate() {
        return this.canUpdate;
    }

    public boolean canDelete() {
        return this.canDelete;
    }

    public boolean canSetPermissions() {
        return this.canSetPermissions;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ObjectPrivileges objectPrivileges = (ObjectPrivileges) obj;
        if (this.canRead == objectPrivileges.canRead && this.canUpdate == objectPrivileges.canUpdate && this.canDelete == objectPrivileges.canDelete && this.canSetPermissions == objectPrivileges.canSetPermissions && this.canQuery == objectPrivileges.canQuery && this.canCreate == objectPrivileges.canCreate && this.canModifySchema == objectPrivileges.canModifySchema) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((this.canRead ? 1 : 0) * 31) + (this.canUpdate ? 1 : 0)) * 31) + (this.canDelete ? 1 : 0)) * 31) + (this.canSetPermissions ? 1 : 0)) * 31) + (this.canQuery ? 1 : 0)) * 31) + (this.canCreate ? 1 : 0)) * 31) + (this.canModifySchema ? 1 : 0);
    }

    public String toString() {
        return "RealmPrivileges{canRead=" + this.canRead + ", canUpdate=" + this.canUpdate + ", canDelete=" + this.canDelete + ", canSetPermissions=" + this.canSetPermissions + ", canQuery=" + this.canQuery + ", canCreate=" + this.canCreate + ", canModifySchema=" + this.canModifySchema + '}';
    }
}
