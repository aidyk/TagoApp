package io.realm.sync.permissions;

import io.realm.RealmList;
import io.realm.RealmModel;
import io.realm.RealmObject;
import io.realm.annotations.Ignore;
import io.realm.annotations.PrimaryKey;
import io.realm.annotations.RealmClass;
import io.realm.annotations.Required;
import io.realm.internal.annotations.ObjectServer;

@RealmClass(name = "__Class")
@ObjectServer
public class ClassPermissions extends RealmObject {
    @Ignore
    Class<? extends RealmModel> modelClassRef;
    @PrimaryKey
    @Required
    private String name;
    private RealmList<Permission> permissions = new RealmList<>();

    public ClassPermissions() {
    }

    public ClassPermissions(Class<? extends RealmModel> cls) {
        if (cls != null) {
            this.modelClassRef = cls;
            this.name = cls.getSimpleName();
            return;
        }
        throw new IllegalArgumentException("Non-null 'clazz' required.");
    }

    public String getName() {
        return this.name;
    }

    public RealmList<Permission> getPermissions() {
        return this.permissions;
    }
}
