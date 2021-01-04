package io.realm.sync.permissions;

import io.realm.RealmObject;
import io.realm.annotations.RealmClass;
import io.realm.internal.annotations.ObjectServer;

@RealmClass(name = "__Permission")
@ObjectServer
public class Permission extends RealmObject {
    private boolean canCreate;
    private boolean canDelete;
    private boolean canModifySchema;
    private boolean canQuery;
    private boolean canRead;
    private boolean canSetPermissions;
    private boolean canUpdate;
    private Role role;

    public static class Builder {
        private boolean canCreate = false;
        private boolean canDelete = false;
        private boolean canModifySchema = false;
        private boolean canQuery = false;
        private boolean canRead = false;
        private boolean canSetPermissions = false;
        private boolean canUpdate = false;
        private Role role;

        public Builder(Role role2) {
            this.role = role2;
        }

        public Builder allPrivileges() {
            this.canRead = true;
            this.canUpdate = true;
            this.canDelete = true;
            this.canSetPermissions = true;
            this.canQuery = true;
            this.canCreate = true;
            this.canModifySchema = true;
            return this;
        }

        public Builder noPrivileges() {
            this.canRead = false;
            this.canUpdate = false;
            this.canDelete = false;
            this.canSetPermissions = false;
            this.canQuery = false;
            this.canCreate = false;
            this.canModifySchema = false;
            return this;
        }

        public Builder canRead(boolean z) {
            this.canRead = z;
            return this;
        }

        public Builder canUpdate(boolean z) {
            this.canUpdate = z;
            return this;
        }

        public Builder canDelete(boolean z) {
            this.canDelete = z;
            return this;
        }

        public Builder canSetPermissions(boolean z) {
            this.canSetPermissions = z;
            return this;
        }

        public Builder canQuery(boolean z) {
            this.canQuery = z;
            return this;
        }

        public Builder canCreate(boolean z) {
            this.canCreate = z;
            return this;
        }

        public Builder canModifySchema(boolean z) {
            this.canModifySchema = z;
            return this;
        }

        public Permission build() {
            return new Permission(this.role, this.canRead, this.canUpdate, this.canDelete, this.canSetPermissions, this.canQuery, this.canCreate, this.canModifySchema);
        }
    }

    public Permission() {
    }

    public Permission(Role role2) {
        this.role = role2;
    }

    private Permission(Role role2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.role = role2;
        this.canRead = z;
        this.canUpdate = z2;
        this.canDelete = z3;
        this.canSetPermissions = z4;
        this.canQuery = z5;
        this.canCreate = z6;
        this.canModifySchema = z7;
    }

    public Role getRole() {
        return this.role;
    }

    public boolean canRead() {
        return this.canRead;
    }

    public void setCanRead(boolean z) {
        this.canRead = z;
    }

    public boolean canUpdate() {
        return this.canUpdate;
    }

    public void setCanUpdate(boolean z) {
        this.canUpdate = z;
    }

    public boolean canDelete() {
        return this.canDelete;
    }

    public void setCanDelete(boolean z) {
        this.canDelete = z;
    }

    public boolean canSetPermissions() {
        return this.canSetPermissions;
    }

    public void setCanSetPermissions(boolean z) {
        this.canSetPermissions = z;
    }

    public boolean canQuery() {
        return this.canQuery;
    }

    public void setCanQuery(boolean z) {
        this.canQuery = z;
    }

    public boolean canCreate() {
        return this.canCreate;
    }

    public void setCanCreate(boolean z) {
        this.canCreate = z;
    }

    public boolean canModifySchema() {
        return this.canModifySchema;
    }

    public void setCanModifySchema(boolean z) {
        this.canModifySchema = z;
    }
}
