namespace FamilyRelationshipDataAccess
{
    public class FamilyDbContext : DbContext
    {
        public FamilyDbContext(DbContextOptions<FamilyDbContext> options) : base(options) { }

        public DbSet<Family> Family { get; set; }
        public DbSet<FamilyMember> FamilyMembers { get; set; }
        public DbSet<FamilyRelationship> FamilyRelationships { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Family>()
                .HasMany(f => f.FamilyMembers)
                .WithOne(m => m.Family)
                .HasForeignKey(m => m.FamilyId)
                .OnDelete(DeleteBehavior.Cascade);

            modelBuilder.Entity<FamilyMember>()
                .HasMany(m => m.RelationshipsFrom)
                .WithOne(r => r.FamilyMemberFrom)
                .HasForeignKey(r => r.FamilyMemberFromId)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<FamilyMember>()
                .HasMany(m => m.RelationshipsTo)
                .WithOne(r => r.FamilyMemberTo)
                .HasForeignKey(r => r.FamilyMemberToId)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<Family>()
                .HasMany(f => f.FamilyRelationships)
                .WithOne(r => r.Family)
                .HasForeignKey(r => r.FamilyId)
                .OnDelete(DeleteBehavior.Cascade);
        }
    }
}
