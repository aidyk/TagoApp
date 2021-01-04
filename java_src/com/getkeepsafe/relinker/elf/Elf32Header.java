package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class Elf32Header extends Elf.Header {
    private final ElfParser parser;

    public Elf32Header(boolean z, ElfParser elfParser) throws IOException {
        this.bigEndian = z;
        this.parser = elfParser;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.type = elfParser.readHalf(allocate, 16);
        this.phoff = elfParser.readWord(allocate, 28);
        this.shoff = elfParser.readWord(allocate, 32);
        this.phentsize = elfParser.readHalf(allocate, 42);
        this.phnum = elfParser.readHalf(allocate, 44);
        this.shentsize = elfParser.readHalf(allocate, 46);
        this.shnum = elfParser.readHalf(allocate, 48);
        this.shstrndx = elfParser.readHalf(allocate, 50);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    public Elf.SectionHeader getSectionHeader(int i) throws IOException {
        return new Section32Header(this.parser, this, i);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    public Elf.ProgramHeader getProgramHeader(long j) throws IOException {
        return new Program32Header(this.parser, this, j);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    public Elf.DynamicStructure getDynamicStructure(long j, int i) throws IOException {
        return new Dynamic32Structure(this.parser, this, j, i);
    }
}
