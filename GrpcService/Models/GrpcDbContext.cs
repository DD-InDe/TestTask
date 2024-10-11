using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace GrpcService.Models;

public partial class GrpcDbContext : DbContext
{
    public GrpcDbContext()
    {
    }

    public GrpcDbContext(DbContextOptions<GrpcDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<GrpcData> GrpcData { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https: //go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseNpgsql("Host=localhost;Port=4444;Database=grpc_db;Username=postgres;Password=admin");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<GrpcData>().ToTable("grpc_data");
        modelBuilder.Entity<GrpcData>().HasKey(c => new { c.PacketSeqNum, c.RecordSeqNum });
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}