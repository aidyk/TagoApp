package io.realm.sync.permissions;

import io.realm.RealmObject;
import io.realm.RealmResults;
import io.realm.annotations.LinkingObjects;
import io.realm.annotations.PrimaryKey;
import io.realm.annotations.RealmClass;
import io.realm.annotations.Required;
import io.realm.internal.annotations.ObjectServer;
import javax.annotation.Nullable;

@RealmClass(name = "__User")
@ObjectServer
public class PermissionUser extends RealmObject {
    @PrimaryKey
    @Required
    private String id;
    @LinkingObjects("members")
    final RealmResults<Role> roles = null;

    public PermissionUser() {
    }

    public PermissionUser(String str) {
        this.id = str;
    }

    public String getId() {
        return this.id;
    }

    @Nullable
    public RealmResults<Role> getRoles() {
        return this.roles;
    }
}
