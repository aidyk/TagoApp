package io.realm.rx;

import io.reactivex.BackpressureStrategy;
import io.reactivex.Flowable;
import io.reactivex.FlowableEmitter;
import io.reactivex.FlowableOnSubscribe;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Single;
import io.reactivex.disposables.Disposables;
import io.realm.DynamicRealm;
import io.realm.DynamicRealmObject;
import io.realm.ObjectChangeSet;
import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmConfiguration;
import io.realm.RealmList;
import io.realm.RealmModel;
import io.realm.RealmObject;
import io.realm.RealmObjectChangeListener;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import java.util.IdentityHashMap;
import java.util.Map;

public class RealmObservableFactory implements RxObservableFactory {
    private static final BackpressureStrategy BACK_PRESSURE_STRATEGY = BackpressureStrategy.LATEST;
    private ThreadLocal<StrongReferenceCounter<RealmList>> listRefs = new ThreadLocal<StrongReferenceCounter<RealmList>>() {
        /* class io.realm.rx.RealmObservableFactory.AnonymousClass2 */

        /* access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public StrongReferenceCounter<RealmList> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };
    private ThreadLocal<StrongReferenceCounter<RealmModel>> objectRefs = new ThreadLocal<StrongReferenceCounter<RealmModel>>() {
        /* class io.realm.rx.RealmObservableFactory.AnonymousClass3 */

        /* access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public StrongReferenceCounter<RealmModel> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };
    private ThreadLocal<StrongReferenceCounter<RealmResults>> resultsRefs = new ThreadLocal<StrongReferenceCounter<RealmResults>>() {
        /* class io.realm.rx.RealmObservableFactory.AnonymousClass1 */

        /* access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public StrongReferenceCounter<RealmResults> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };

    public int hashCode() {
        return 37;
    }

    @Override // io.realm.rx.RxObservableFactory
    public Flowable<Realm> from(Realm realm) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<Realm>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass4 */

            @Override // io.reactivex.FlowableOnSubscribe
            public void subscribe(final FlowableEmitter<Realm> flowableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                final AnonymousClass1 r1 = new RealmChangeListener<Realm>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass4.AnonymousClass1 */

                    public void onChange(Realm realm) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(realm);
                        }
                    }
                };
                instance.addChangeListener(r1);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass4.AnonymousClass2 */

                    public void run() {
                        instance.removeChangeListener(r1);
                        instance.close();
                    }
                }));
                flowableEmitter.onNext(instance);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public Flowable<DynamicRealm> from(DynamicRealm dynamicRealm) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<DynamicRealm>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass5 */

            @Override // io.reactivex.FlowableOnSubscribe
            public void subscribe(final FlowableEmitter<DynamicRealm> flowableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                final AnonymousClass1 r1 = new RealmChangeListener<DynamicRealm>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass5.AnonymousClass1 */

                    public void onChange(DynamicRealm dynamicRealm) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(dynamicRealm);
                        }
                    }
                };
                instance.addChangeListener(r1);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass5.AnonymousClass2 */

                    public void run() {
                        instance.removeChangeListener(r1);
                        instance.close();
                    }
                }));
                flowableEmitter.onNext(instance);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Flowable<RealmResults<E>> from(Realm realm, final RealmResults<E> realmResults) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<RealmResults<E>>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass6 */

            @Override // io.reactivex.FlowableOnSubscribe
            public void subscribe(final FlowableEmitter<RealmResults<E>> flowableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final AnonymousClass1 r1 = new RealmChangeListener<RealmResults<E>>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass6.AnonymousClass1 */

                    public void onChange(RealmResults<E> realmResults) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(realmResults);
                        }
                    }
                };
                realmResults.addChangeListener(r1);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass6.AnonymousClass2 */

                    public void run() {
                        realmResults.removeChangeListener(r1);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                flowableEmitter.onNext(realmResults);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmResults<E>>> changesetsFrom(Realm realm, final RealmResults<E> realmResults) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmResults<E>>>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass7 */

            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(final ObservableEmitter<CollectionChange<RealmResults<E>>> observableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final AnonymousClass1 r1 = new OrderedRealmCollectionChangeListener<RealmResults<E>>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass7.AnonymousClass1 */

                    public void onChange(RealmResults<E> realmResults, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new CollectionChange(realmResults, orderedCollectionChangeSet));
                        }
                    }
                };
                realmResults.addChangeListener(r1);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass7.AnonymousClass2 */

                    public void run() {
                        realmResults.removeChangeListener(r1);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                observableEmitter.onNext(new CollectionChange<>(realmResults, null));
            }
        });
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Flowable<RealmResults<E>> from(DynamicRealm dynamicRealm, final RealmResults<E> realmResults) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<RealmResults<E>>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass8 */

            @Override // io.reactivex.FlowableOnSubscribe
            public void subscribe(final FlowableEmitter<RealmResults<E>> flowableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final AnonymousClass1 r1 = new RealmChangeListener<RealmResults<E>>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass8.AnonymousClass1 */

                    public void onChange(RealmResults<E> realmResults) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(realmResults);
                        }
                    }
                };
                realmResults.addChangeListener(r1);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass8.AnonymousClass2 */

                    public void run() {
                        realmResults.removeChangeListener(r1);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                flowableEmitter.onNext(realmResults);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmResults<E>>> changesetsFrom(DynamicRealm dynamicRealm, final RealmResults<E> realmResults) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmResults<E>>>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass9 */

            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(final ObservableEmitter<CollectionChange<RealmResults<E>>> observableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final AnonymousClass1 r1 = new OrderedRealmCollectionChangeListener<RealmResults<E>>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass9.AnonymousClass1 */

                    public void onChange(RealmResults<E> realmResults, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new CollectionChange(realmResults, orderedCollectionChangeSet));
                        }
                    }
                };
                realmResults.addChangeListener(r1);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass9.AnonymousClass2 */

                    public void run() {
                        realmResults.removeChangeListener(r1);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                observableEmitter.onNext(new CollectionChange<>(realmResults, null));
            }
        });
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Flowable<RealmList<E>> from(Realm realm, final RealmList<E> realmList) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<RealmList<E>>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass10 */

            @Override // io.reactivex.FlowableOnSubscribe
            public void subscribe(final FlowableEmitter<RealmList<E>> flowableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(realmList);
                final AnonymousClass1 r1 = new RealmChangeListener<RealmList<E>>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass10.AnonymousClass1 */

                    public void onChange(RealmList<E> realmList) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(realmList);
                        }
                    }
                };
                realmList.addChangeListener(r1);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass10.AnonymousClass2 */

                    public void run() {
                        realmList.removeChangeListener(r1);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(realmList);
                    }
                }));
                flowableEmitter.onNext(realmList);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmList<E>>> changesetsFrom(Realm realm, final RealmList<E> realmList) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmList<E>>>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass11 */

            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(final ObservableEmitter<CollectionChange<RealmList<E>>> observableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(realmList);
                final AnonymousClass1 r1 = new OrderedRealmCollectionChangeListener<RealmList<E>>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass11.AnonymousClass1 */

                    public void onChange(RealmList<E> realmList, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new CollectionChange(realmList, orderedCollectionChangeSet));
                        }
                    }
                };
                realmList.addChangeListener(r1);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass11.AnonymousClass2 */

                    public void run() {
                        realmList.removeChangeListener(r1);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(realmList);
                    }
                }));
                observableEmitter.onNext(new CollectionChange<>(realmList, null));
            }
        });
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Flowable<RealmList<E>> from(DynamicRealm dynamicRealm, final RealmList<E> realmList) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<RealmList<E>>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass12 */

            @Override // io.reactivex.FlowableOnSubscribe
            public void subscribe(final FlowableEmitter<RealmList<E>> flowableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(realmList);
                final AnonymousClass1 r1 = new RealmChangeListener<RealmList<E>>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass12.AnonymousClass1 */

                    public void onChange(RealmList<E> realmList) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(realmList);
                        }
                    }
                };
                realmList.addChangeListener(r1);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass12.AnonymousClass2 */

                    public void run() {
                        realmList.removeChangeListener(r1);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(realmList);
                    }
                }));
                flowableEmitter.onNext(realmList);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmList<E>>> changesetsFrom(DynamicRealm dynamicRealm, final RealmList<E> realmList) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmList<E>>>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass13 */

            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(final ObservableEmitter<CollectionChange<RealmList<E>>> observableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(realmList);
                final AnonymousClass1 r1 = new OrderedRealmCollectionChangeListener<RealmList<E>>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass13.AnonymousClass1 */

                    public void onChange(RealmList<E> realmList, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new CollectionChange(realmList, orderedCollectionChangeSet));
                        }
                    }
                };
                realmList.addChangeListener(r1);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass13.AnonymousClass2 */

                    public void run() {
                        realmList.removeChangeListener(r1);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(realmList);
                    }
                }));
                observableEmitter.onNext(new CollectionChange<>(realmList, null));
            }
        });
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E extends RealmModel> Flowable<E> from(Realm realm, final E e) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<E>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass14 */

            @Override // io.reactivex.FlowableOnSubscribe
            public void subscribe(final FlowableEmitter<E> flowableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(e);
                final AnonymousClass1 r1 = new RealmChangeListener<E>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass14.AnonymousClass1 */

                    public void onChange(E e) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(e);
                        }
                    }
                };
                RealmObject.addChangeListener(e, r1);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass14.AnonymousClass2 */

                    public void run() {
                        RealmObject.removeChangeListener(e, r1);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(e);
                    }
                }));
                flowableEmitter.onNext((E) e);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E extends RealmModel> Observable<ObjectChange<E>> changesetsFrom(Realm realm, final E e) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<ObjectChange<E>>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass15 */

            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(final ObservableEmitter<ObjectChange<E>> observableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(e);
                final AnonymousClass1 r1 = new RealmObjectChangeListener<E>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass15.AnonymousClass1 */

                    @Override // io.realm.RealmObjectChangeListener
                    public void onChange(E e, ObjectChangeSet objectChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new ObjectChange(e, objectChangeSet));
                        }
                    }
                };
                RealmObject.addChangeListener(e, r1);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass15.AnonymousClass2 */

                    public void run() {
                        RealmObject.removeChangeListener(e, r1);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(e);
                    }
                }));
                observableEmitter.onNext(new ObjectChange<>(e, null));
            }
        });
    }

    @Override // io.realm.rx.RxObservableFactory
    public Flowable<DynamicRealmObject> from(DynamicRealm dynamicRealm, final DynamicRealmObject dynamicRealmObject) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<DynamicRealmObject>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass16 */

            @Override // io.reactivex.FlowableOnSubscribe
            public void subscribe(final FlowableEmitter<DynamicRealmObject> flowableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(dynamicRealmObject);
                final AnonymousClass1 r1 = new RealmChangeListener<DynamicRealmObject>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass16.AnonymousClass1 */

                    public void onChange(DynamicRealmObject dynamicRealmObject) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(dynamicRealmObject);
                        }
                    }
                };
                RealmObject.addChangeListener(dynamicRealmObject, r1);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass16.AnonymousClass2 */

                    public void run() {
                        RealmObject.removeChangeListener(dynamicRealmObject, r1);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(dynamicRealmObject);
                    }
                }));
                flowableEmitter.onNext(dynamicRealmObject);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public Observable<ObjectChange<DynamicRealmObject>> changesetsFrom(DynamicRealm dynamicRealm, final DynamicRealmObject dynamicRealmObject) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<ObjectChange<DynamicRealmObject>>() {
            /* class io.realm.rx.RealmObservableFactory.AnonymousClass17 */

            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(final ObservableEmitter<ObjectChange<DynamicRealmObject>> observableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(dynamicRealmObject);
                final AnonymousClass1 r1 = new RealmObjectChangeListener<DynamicRealmObject>() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass17.AnonymousClass1 */

                    public void onChange(DynamicRealmObject dynamicRealmObject, ObjectChangeSet objectChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new ObjectChange(dynamicRealmObject, objectChangeSet));
                        }
                    }
                };
                dynamicRealmObject.addChangeListener(r1);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() {
                    /* class io.realm.rx.RealmObservableFactory.AnonymousClass17.AnonymousClass2 */

                    public void run() {
                        dynamicRealmObject.removeChangeListener(r1);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(dynamicRealmObject);
                    }
                }));
                observableEmitter.onNext(new ObjectChange<>(dynamicRealmObject, null));
            }
        });
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Single<RealmQuery<E>> from(Realm realm, RealmQuery<E> realmQuery) {
        throw new RuntimeException("RealmQuery not supported yet.");
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Single<RealmQuery<E>> from(DynamicRealm dynamicRealm, RealmQuery<E> realmQuery) {
        throw new RuntimeException("RealmQuery not supported yet.");
    }

    public boolean equals(Object obj) {
        return obj instanceof RealmObservableFactory;
    }

    /* access modifiers changed from: private */
    public static class StrongReferenceCounter<K> {
        private final Map<K, Integer> references;

        private StrongReferenceCounter() {
            this.references = new IdentityHashMap();
        }

        public void acquireReference(K k) {
            Integer num = this.references.get(k);
            if (num == null) {
                this.references.put(k, 1);
            } else {
                this.references.put(k, Integer.valueOf(num.intValue() + 1));
            }
        }

        public void releaseReference(K k) {
            Integer num = this.references.get(k);
            if (num == null) {
                throw new IllegalStateException("Object does not have any references: " + ((Object) k));
            } else if (num.intValue() > 1) {
                this.references.put(k, Integer.valueOf(num.intValue() - 1));
            } else if (num.intValue() == 1) {
                this.references.remove(k);
            } else {
                throw new IllegalStateException("Invalid reference count: " + num);
            }
        }
    }
}
