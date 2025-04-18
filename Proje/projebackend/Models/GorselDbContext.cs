using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace projebackend.Models;

public partial class GorselDbContext : DbContext
{
    public GorselDbContext(DbContextOptions<GorselDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<song> songs { get; set; }

    public virtual DbSet<user> users { get; set; }

    public virtual DbSet<user_song> user_songs { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder
            .UseCollation("utf8mb4_0900_ai_ci")
            .HasCharSet("utf8mb4");

        modelBuilder.Entity<song>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.Property(e => e.genre).HasMaxLength(45);
            entity.Property(e => e.name).HasMaxLength(100);
        });

        modelBuilder.Entity<user>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.Property(e => e.password)
                .HasMaxLength(255)
                .UseCollation("utf8mb3_general_ci")
                .HasCharSet("utf8mb3");
            entity.Property(e => e.phone).HasMaxLength(15);
            entity.Property(e => e.username)
                .HasMaxLength(20)
                .UseCollation("utf8mb3_general_ci")
                .HasCharSet("utf8mb3");
        });

        modelBuilder.Entity<user_song>(entity =>
        {
            entity.HasKey(e => e.id).HasName("PRIMARY");

            entity.ToTable("user_song");

            entity.HasIndex(e => e.songId, "fk_song_idx");

            entity.HasIndex(e => e.userId, "fk_user_idx");

            entity.HasOne(d => d.song).WithMany(p => p.user_songs)
                .HasForeignKey(d => d.songId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_song");

            entity.HasOne(d => d.user).WithMany(p => p.user_songs)
                .HasForeignKey(d => d.userId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_user");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
