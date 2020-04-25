using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Ncovi_DAL.Models
{
    public partial class NcoviContext : DbContext
    {
        public static string myConnection;

        public NcoviContext()
        {
        }

        public NcoviContext(DbContextOptions<NcoviContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Cases> Cases { get; set; }
        public virtual DbSet<Countries> Countries { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer(myConnection);
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Cases>(entity =>
            {
                entity.HasKey(e => new { e.Date, e.CountryId })
                    .HasName("PK__Cases__96356B0DF84F123B");

                entity.Property(e => e.Date).HasColumnType("date");

                entity.Property(e => e.CountryId)
                    .HasColumnName("CountryID")
                    .HasMaxLength(5);

                entity.HasOne(d => d.Country)
                    .WithMany(p => p.Cases)
                    .HasForeignKey(d => d.CountryId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Cases__CountryID__3A81B327");
            });

            modelBuilder.Entity<Countries>(entity =>
            {
                entity.HasKey(e => e.CountryId);

                entity.Property(e => e.CountryId).HasMaxLength(5);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
