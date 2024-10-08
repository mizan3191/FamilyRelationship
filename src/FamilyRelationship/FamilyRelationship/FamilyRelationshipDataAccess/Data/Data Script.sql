USE [FamilyRelationshipDB]
GO
SET IDENTITY_INSERT [dbo].[Family] ON 

INSERT [dbo].[Family] ([Id], [FamilyName]) VALUES (1, N'Lima''s Family')
INSERT [dbo].[Family] ([Id], [FamilyName]) VALUES (2, N'Zahan Family')
INSERT [dbo].[Family] ([Id], [FamilyName]) VALUES (3, N'Noushin Family')
SET IDENTITY_INSERT [dbo].[Family] OFF
GO
SET IDENTITY_INSERT [dbo].[FamilyMembers] ON 

INSERT [dbo].[FamilyMembers] ([Id], [FamilyMemberName], [FamilyId]) VALUES (1, N'Lima', 1)
INSERT [dbo].[FamilyMembers] ([Id], [FamilyMemberName], [FamilyId]) VALUES (2, N'Limpa', 1)
INSERT [dbo].[FamilyMembers] ([Id], [FamilyMemberName], [FamilyId]) VALUES (3, N'Maa', 1)
INSERT [dbo].[FamilyMembers] ([Id], [FamilyMemberName], [FamilyId]) VALUES (4, N'Baba', 1)
INSERT [dbo].[FamilyMembers] ([Id], [FamilyMemberName], [FamilyId]) VALUES (5, N'Bhai', 1)
INSERT [dbo].[FamilyMembers] ([Id], [FamilyMemberName], [FamilyId]) VALUES (6, N'Zahan', 2)
INSERT [dbo].[FamilyMembers] ([Id], [FamilyMemberName], [FamilyId]) VALUES (7, N'Limpa Zahan', 2)
INSERT [dbo].[FamilyMembers] ([Id], [FamilyMemberName], [FamilyId]) VALUES (8, N'Mom', 2)
INSERT [dbo].[FamilyMembers] ([Id], [FamilyMemberName], [FamilyId]) VALUES (9, N'Dad', 2)
INSERT [dbo].[FamilyMembers] ([Id], [FamilyMemberName], [FamilyId]) VALUES (10, N'Brother', 2)
SET IDENTITY_INSERT [dbo].[FamilyMembers] OFF
GO
SET IDENTITY_INSERT [dbo].[FamilyRelationships] ON 

INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (1, 1, 1, 1, 13)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (2, 1, 2, 2, 13)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (3, 1, 3, 3, 13)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (5, 1, 4, 4, 13)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (6, 1, 5, 5, 13)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (7, 2, 6, 6, 13)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (8, 2, 7, 7, 13)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (9, 2, 8, 8, 13)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (10, 2, 9, 9, 13)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (11, 2, 10, 10, 13)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (12, 1, 2, 1, 4)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (13, 1, 3, 1, 2)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (14, 1, 4, 1, 1)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (15, 1, 5, 1, 3)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (16, 1, 1, 2, 4)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (17, 1, 3, 2, 2)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (18, 1, 4, 2, 1)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (19, 1, 5, 2, 3)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (20, 1, 1, 3, 6)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (21, 1, 2, 3, 6)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (22, 1, 4, 3, 7)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (23, 1, 5, 3, 5)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (24, 1, 1, 4, 6)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (25, 1, 2, 4, 6)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (26, 1, 3, 4, 8)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (27, 1, 5, 4, 5)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (28, 1, 1, 5, 4)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (29, 1, 2, 5, 4)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (30, 1, 3, 5, 2)
INSERT [dbo].[FamilyRelationships] ([Id], [FamilyId], [FamilyMemberFromId], [FamilyMemberToId], [Relationship]) VALUES (31, 1, 4, 5, 1)
SET IDENTITY_INSERT [dbo].[FamilyRelationships] OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240815152152_First', N'8.0.7')
GO
