namespace FamilyRelationshipDomain
{
    public class Family
    {
        public int Id { get; set; }
        public string FamilyName { get; set; }

        public ICollection<FamilyMember> FamilyMembers { get; set; }
        public ICollection<FamilyRelationship> FamilyRelationships { get; set; }
    }

    public class FamilyMember
    {
        public int Id { get; set; }
        public string FamilyMemberName { get; set; }

        public int FamilyId { get; set; }
        public Family Family { get; set; }

        public ICollection<FamilyRelationship> RelationshipsFrom { get; set; }
        public ICollection<FamilyRelationship> RelationshipsTo { get; set; }
    }

    public class FamilyRelationship
    {
        public int Id { get; set; }

        public int FamilyId { get; set; }
        public Family Family { get; set; }

        public int FamilyMemberFromId { get; set; }
        public FamilyMember FamilyMemberFrom { get; set; }

        public int FamilyMemberToId { get; set; }
        public FamilyMember FamilyMemberTo { get; set; }

        public RelationshipType Relationship { get; set; }
    }

    public enum RelationshipType
    {
        None = 0,
        Father = 1,
        Mother = 2,
        Brother = 3,
        Sister = 4,
        Son = 5,
        Daughter = 6,
        Husband = 7,
        Wife = 8,
        GrandFather = 9,
        GrandMother = 10,
        Uncle = 11,
        Aunt = 12,
        Self = 13
    }
}
