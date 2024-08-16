namespace FamilyRelationshipDataAccess
{
    public interface IFamilyMember
    {
        Task<Family> GetFamilyByIdAsync(int familyId);
        Task AddFamilyAsync(Family family);
        Task AddFamilyMemberAsync(int familyId, FamilyMember member);
        Task UpdateRelationshipAsync(int familyId, int memberFromId, int memberToId, RelationshipType newRelationship);
        Task<List<Family>> GetAllFamiliesAsync();
        Task<List<FamilyMember>> GetFamilyMembersAsync(int familyId);
    }
}
