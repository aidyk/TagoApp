package com.liber8tech.tago.util;

import android.text.SpannableStringBuilder;
import java.util.ArrayDeque;
import java.util.Deque;

public class Truss {
    private final SpannableStringBuilder builder = new SpannableStringBuilder();
    private final Deque<Span> stack = new ArrayDeque();

    public Truss append(String str) {
        this.builder.append((CharSequence) str);
        return this;
    }

    public Truss append(CharSequence charSequence) {
        this.builder.append(charSequence);
        return this;
    }

    public Truss append(char c) {
        this.builder.append(c);
        return this;
    }

    public Truss append(int i) {
        this.builder.append((CharSequence) String.valueOf(i));
        return this;
    }

    public Truss pushSpan(Object obj) {
        this.stack.addLast(new Span(this.builder.length(), obj));
        return this;
    }

    public Truss popSpan() {
        Span removeLast = this.stack.removeLast();
        this.builder.setSpan(removeLast.span, removeLast.start, this.builder.length(), 17);
        return this;
    }

    public CharSequence build() {
        while (!this.stack.isEmpty()) {
            popSpan();
        }
        return this.builder;
    }

    /* access modifiers changed from: private */
    public static final class Span {
        final Object span;
        final int start;

        public Span(int i, Object obj) {
            this.start = i;
            this.span = obj;
        }
    }
}
