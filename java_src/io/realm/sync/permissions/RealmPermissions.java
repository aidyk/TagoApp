package io.realm.sync.permissions;

import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.annotations.RealmClass;
import io.realm.internal.annotations.ObjectServer;

@RealmClass(name = "__Realm")
@ObjectServer
public class RealmPermissions extends RealmObject {
    @PrimaryKey
    private int id = 0;
    private RealmList<Permission> permissions = new RealmList<>();

    public RealmList<Permission> getPermissions() {
        return this.permissions;
    }
}
