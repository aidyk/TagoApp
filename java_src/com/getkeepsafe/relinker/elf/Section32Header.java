package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class Section32Header extends Elf.SectionHeader {
    public Section32Header(ElfParser elfParser, Elf.Header header, int i) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(header.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.info = elfParser.readWord(allocate, header.shoff + ((long) (i * header.shentsize)) + 28);
    }
}
