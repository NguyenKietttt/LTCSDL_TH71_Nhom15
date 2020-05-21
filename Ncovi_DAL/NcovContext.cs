using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Ncov_Common.Req;

namespace Ncov_DAL.Models
{
    public partial class NcovContext : DbContext
    {
        public static string myConnection;

        public NcovContext()
        {
        }

        public NcovContext(DbContextOptions<NcovContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Cases> Cases { get; set; }
        public virtual DbSet<Cities> Cities { get; set; }
        public virtual DbSet<Countries> Countries { get; set; }
        public virtual DbSet<News> News { get; set; }
        public virtual DbSet<Patients> Patients { get; set; }

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
                    .HasName("PK__Cases__96356B0DF55C263F");

                entity.Property(e => e.Date).HasColumnType("date");

                entity.Property(e => e.CountryId)
                    .HasColumnName("CountryID")
                    .HasMaxLength(5);

                entity.HasOne(d => d.Country)
                    .WithMany(p => p.Cases)
                    .HasForeignKey(d => d.CountryId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Cases_Countries");
            });

            modelBuilder.Entity<Cities>(entity =>
            {
                entity.HasKey(e => e.CityName);

                entity.Property(e => e.CityName).HasMaxLength(100);
            });

            modelBuilder.Entity<Countries>(entity =>
            {
                entity.HasKey(e => e.CountryId);

                entity.Property(e => e.CountryId)
                    .HasColumnName("CountryID")
                    .HasMaxLength(5);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<News>(entity =>
            {
                entity.HasKey(e => e.NewId)
                    .HasName("PK__News__7CC3769ED0432285");

                entity.Property(e => e.NewId)
                    .HasColumnName("NewID")
                    .ValueGeneratedNever();

                entity.Property(e => e.Date).HasColumnType("date");

                entity.Property(e => e.Description).HasMaxLength(200);

                entity.Property(e => e.Link).HasColumnType("ntext");

                entity.Property(e => e.Picture).HasColumnType("ntext");

                entity.Property(e => e.Title).HasMaxLength(100);
            });

            modelBuilder.Entity<Patients>(entity =>
            {
                entity.HasKey(e => e.PatientId)
                    .HasName("PK__Patients__970EC3460E8BB22B");

                entity.Property(e => e.PatientId)
                    .HasColumnName("PatientID")
                    .HasMaxLength(10)
                    .IsFixedLength();

                entity.Property(e => e.CityName)
                    .IsRequired()
                    .HasMaxLength(100);

                entity.Property(e => e.CountryId)
                    .IsRequired()
                    .HasColumnName("CountryID")
                    .HasMaxLength(5);

                entity.Property(e => e.Sex).HasMaxLength(20);

                entity.Property(e => e.Status).HasMaxLength(100);

                entity.HasOne(d => d.CityNameNavigation)
                    .WithMany(p => p.Patients)
                    .HasForeignKey(d => d.CityName)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Patients_Cities");

                entity.HasOne(d => d.Country)
                    .WithMany(p => p.Patients)
                    .HasForeignKey(d => d.CountryId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Patients_Countries");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
