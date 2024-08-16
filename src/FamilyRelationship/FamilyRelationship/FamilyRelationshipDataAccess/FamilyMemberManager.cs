namespace FamilyRelationshipDataAccess
{
    public class FamilyMemberManager : BaseDataManager, IFamilyMember
    {
        private readonly FamilyDbContext _context;

        public FamilyMemberManager(FamilyDbContext model) : base(model)
        {
            _context = model;
        }

        public async Task<Family> GetFamilyByIdAsync(int familyId)
        {
            return await _context.Family
                .Include(f => f.FamilyMembers)
                .Include(f => f.FamilyRelationships)
                .FirstOrDefaultAsync(f => f.Id == familyId);
        }

        public async Task AddFamilyAsync(Family family)
        {
            _context.Family.Add(family);
            await _context.SaveChangesAsync();
        }

        public async Task AddFamilyMemberAsync(int familyId, FamilyMember member)
        {
            var family = await _context.Family.FindAsync(familyId);
            if (family == null) throw new ArgumentException("Family not found");

            member.FamilyId = familyId;
            _context.FamilyMembers.Add(member);
            await _context.SaveChangesAsync();

            // Add self-relation
            var selfRelation = new FamilyRelationship
            {
                FamilyId = familyId,
                FamilyMemberFromId = member.Id,
                FamilyMemberToId = member.Id,
                Relationship = RelationshipType.Self
            };

            _context.FamilyRelationships.Add(selfRelation);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateRelationshipAsync(int familyId, int memberFromId, int memberToId, RelationshipType newRelationship)
        {
            var relationship = await _context.FamilyRelationships
                .FirstOrDefaultAsync(r => r.FamilyId == familyId && r.FamilyMemberFromId == memberFromId && r.FamilyMemberToId == memberToId);

            if (relationship != null)
            {
                relationship.Relationship = newRelationship;
            }
            else
            {
                relationship = new FamilyRelationship
                {
                    FamilyId = familyId,
                    FamilyMemberFromId = memberFromId,
                    FamilyMemberToId = memberToId,
                    Relationship = newRelationship
                };
                _context.FamilyRelationships.Add(relationship);
            }

            await _context.SaveChangesAsync();
        }

        public async Task<List<Family>> GetAllFamiliesAsync()
        {
            return await _context.Family.ToListAsync();
        }

        public async Task<List<FamilyMember>> GetFamilyMembersAsync(int familyId)
        {
            return await _context.FamilyMembers
                .Where(fm => fm.FamilyId == familyId)
                .ToListAsync();
        }

    }
}