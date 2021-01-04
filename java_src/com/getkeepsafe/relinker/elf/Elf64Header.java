package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class Elf64Header extends Elf.Header {
    private final ElfParser parser;

    public Elf64Header(boolean z, ElfParser elfParser) throws IOException {
        this.bigEndian = z;
        this.parser = elfParser;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.type = elfParser.readHalf(allocate, 16);
        this.phoff = elfParser.readLong(allocate, 32);
        this.shoff = elfParser.readLong(allocate, 40);
        this.phentsize = elfParser.readHalf(allocate, 54);
        this.phnum = elfParser.readHalf(allocate, 56);
        this.shentsize = elfParser.readHalf(allocate, 58);
        this.shnum = elfParser.readHalf(allocate, 60);
        this.shstrndx = elfParser.readHalf(allocate, 62);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    public Elf.SectionHeader getSectionHeader(int i) throws IOException {
        return new Section64Header(this.parser, this, i);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    public Elf.ProgramHeader getProgramHeader(long j) throws IOException {
        return new Program64Header(this.parser, this, j);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    public Elf.DynamicStructure getDynamicStructure(long j, int i) throws IOException {
        return new Dynamic64Structure(this.parser, this, j, i);
    }
}
