package io.realm.sync.permissions;

import io.realm.Realm;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.annotations.RealmClass;
import io.realm.annotations.Required;
import io.realm.internal.Util;
import io.realm.internal.annotations.ObjectServer;

@RealmClass(name = "__Role")
@ObjectServer
public class Role extends RealmObject {
    private RealmList<PermissionUser> members = new RealmList<>();
    @PrimaryKey
    @Required
    private String name;

    public Role() {
    }

    public Role(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    public void addMember(String str) {
        if (!isManaged()) {
            throw new IllegalStateException("Can not add a member to a non managed Role");
        } else if (!Util.isEmptyString(str)) {
            Realm realm = getRealm();
            PermissionUser permissionUser = (PermissionUser) realm.where(PermissionUser.class).equalTo("id", str).findFirst();
            if (permissionUser == null) {
                permissionUser = (PermissionUser) realm.createObject(PermissionUser.class, str);
            }
            this.members.add(permissionUser);
        } else {
            throw new IllegalArgumentException("Non-empty 'userId' required");
        }
    }

    public boolean removeMember(String str) {
        PermissionUser permissionUser = (PermissionUser) getRealm().where(PermissionUser.class).equalTo("id", str).findFirst();
        if (permissionUser != null) {
            return this.members.remove(permissionUser);
        }
        return false;
    }

    public boolean hasMember(String str) {
        return this.members.where().equalTo("id", str).count() > 0;
    }

    public RealmList<PermissionUser> getMembers() {
        return this.members;
    }
}
