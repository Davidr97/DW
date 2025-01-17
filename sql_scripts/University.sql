USE [University]
GO
/****** Object:  Table [dbo].[AcademicDegrees]    Script Date: 12/10/2018 11:40:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicDegrees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Degree] [nvarchar](50) NOT NULL,
	[SortId] [int] NULL,
 CONSTRAINT [PK_AcademicDegrees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AcademicRanks]    Script Date: 12/10/2018 11:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicRanks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Rank] [nvarchar](50) NOT NULL,
	[SortId] [int] NULL,
 CONSTRAINT [PK_AcademicRanks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivitiesFormulas]    Script Date: 12/10/2018 11:40:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivitiesFormulas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseActivitiesId] [int] NULL,
	[Kolokvium1] [int] NULL,
	[Kolokvium2] [int] NULL,
	[Kolokvium3] [int] NULL,
	[Kolokvium4] [int] NULL,
	[Domasna1] [int] NULL,
	[Domasna2] [int] NULL,
	[Domasna3] [int] NULL,
	[Domasna4] [int] NULL,
	[Seminarska1] [int] NULL,
	[Seminarska2] [int] NULL,
	[Seminarska3] [int] NULL,
	[Seminarska4] [int] NULL,
	[Posetenost] [int] NULL,
	[Lab] [int] NULL,
	[Aktivnost] [int] NULL,
	[Usmen] [int] NULL,
	[Pismen] [int] NULL,
	[FormulaName] [nvarchar](256) NULL,
 CONSTRAINT [PK_ActivitiesFormulas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityLogs]    Script Date: 12/10/2018 11:40:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLogs](
	[ID] [uniqueidentifier] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Activity] [nvarchar](255) NOT NULL,
	[PageURL] [nvarchar](255) NULL,
 CONSTRAINT [PK_ActivityLogs] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdministrativeTax]    Script Date: 12/10/2018 11:40:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdministrativeTax](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentSemesterId] [int] NULL,
	[ExamAppliedId] [int] NULL,
	[Sum] [decimal](18, 2) NULL,
	[Code] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[Sms] [bit] NULL,
	[Description] [nvarchar](max) NULL,
	[DateCreated] [datetime] NULL,
	[IsNotified] [bit] NULL,
	[FacultyId] [int] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_AdministrativeTax] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdministrativeTaxStatus]    Script Date: 12/10/2018 11:40:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdministrativeTaxStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](max) NULL,
	[AdministrativeTaxId] [int] NULL,
	[DateStarted] [datetime] NULL,
	[Code] [nvarchar](500) NULL,
	[Sum] [nvarchar](500) NULL,
 CONSTRAINT [PK_AdministrativeTaxStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicantAppeals]    Script Date: 12/10/2018 11:40:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantAppeals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantId] [int] NULL,
	[DateCreated] [datetime] NULL,
	[Description] [nvarchar](max) NULL,
	[Closed] [bit] NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_ApplicantAppeals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicantProgrammes]    Script Date: 12/10/2018 11:40:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantProgrammes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantId] [int] NULL,
	[StudyProgrammeId] [int] NULL,
	[Place] [int] NULL,
 CONSTRAINT [PK_ApplicantProgrammes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicantQuotaTypes]    Script Date: 12/10/2018 11:40:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantQuotaTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_ApplicantQuotaTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicantRang]    Script Date: 12/10/2018 11:40:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantRang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantId] [int] NULL,
	[RangListId] [int] NULL,
	[Place] [int] NULL,
	[SpecialCaseId] [int] NULL,
	[StudyProgrammeId] [int] NULL,
	[QuotaId] [int] NULL,
	[NationalityId] [int] NULL,
	[ListType] [int] NULL,
 CONSTRAINT [PK_ApplicantRang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applicants]    Script Date: 12/10/2018 11:40:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Surname] [nvarchar](500) NULL,
	[FathersName] [nvarchar](500) NULL,
	[BridesName] [nvarchar](500) NULL,
	[Embg] [nvarchar](500) NULL,
	[BirthDate] [datetime] NULL,
	[BirthCommunityId] [int] NULL,
	[BirthCountryId] [int] NULL,
	[Sex] [bit] NULL,
	[NationalityId] [int] NULL,
	[CitizenshipId] [int] NULL,
	[LanguageId] [int] NULL,
	[SpecialCaseId] [int] NULL,
	[StreetNameNo] [nvarchar](500) NULL,
	[LivingPlaceId] [int] NULL,
	[LivingCommunityId] [int] NULL,
	[LivingCountryId] [int] NULL,
	[Gsm] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[GuardianName] [nvarchar](max) NULL,
	[GuardianProffesion] [nvarchar](500) NULL,
	[GuardianOccupation] [nvarchar](500) NULL,
	[StudyGroupId] [int] NULL,
	[StudyCycleId] [int] NULL,
	[GraduationTypeId] [int] NULL,
	[ApplicantStatusId] [int] NULL,
	[TermId] [int] NULL,
	[UserId] [uniqueidentifier] NULL,
	[BirthCommunityOther] [nvarchar](max) NULL,
	[BirthCountryOther] [nvarchar](max) NULL,
	[CitizenShipOther] [nvarchar](max) NULL,
	[LivingPlaceOther] [nvarchar](max) NULL,
	[LivingCommunityOther] [nvarchar](max) NULL,
	[LivingCountryOther] [nvarchar](max) NULL,
	[ChoiseFacultyId] [int] NULL,
	[PrivateQuotaAgreement] [bit] NULL,
	[ApplicantComment] [nvarchar](max) NULL,
	[ApplicantDocuments] [nvarchar](max) NULL,
	[SchoolTypeId] [int] NULL,
	[SchoolId] [int] NULL,
	[YearGraduating] [int] NULL,
	[PreviousLanguageId] [int] NULL,
	[StudyType] [int] NULL,
	[StudyLanguageId] [int] NULL,
	[PreviousFaculty] [nvarchar](500) NULL,
	[HighSchoolPoints] [decimal](18, 3) NULL,
	[GraduationPoints] [decimal](18, 3) NULL,
	[PreviousPoints] [decimal](18, 3) NULL,
	[ExamPoints] [decimal](18, 3) NULL,
	[TotalPoints] [decimal](18, 3) NULL,
	[Grades1Year] [nvarchar](max) NULL,
	[Grades2Year] [nvarchar](max) NULL,
	[Grades3Year] [nvarchar](max) NULL,
	[Grades4Year] [nvarchar](max) NULL,
	[Passport] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[FirstStudyProgrammeId] [int] NULL,
	[HaveNationality] [bit] NULL,
	[HaveNationalityInDiploma] [bit] NULL,
	[Ranked] [bit] NULL,
	[StudyProgrammeEnroled] [int] NULL,
	[TypeEnroled] [int] NULL,
	[AcceptedAsStudent] [bit] NULL,
	[BirthPlaceId] [int] NULL,
	[BirthPlaceOther] [nvarchar](max) NULL,
	[ApplicantDocumentsUpload] [nvarchar](max) NULL,
	[SingleParentRankingAgreement] [bit] NULL,
	[SingleParentingPoints] [decimal](18, 3) NULL,
	[TotalPointsParenting] [decimal](18, 3) NULL,
 CONSTRAINT [PK_Applicants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicantStatus]    Script Date: 12/10/2018 11:40:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_ApplicantStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationControls]    Script Date: 12/10/2018 11:40:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationControls](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[MaskedName] [nvarchar](256) NULL,
	[RealName] [nvarchar](256) NULL,
	[Type] [bit] NULL,
	[FolderName] [varchar](256) NULL,
	[FacultyId] [int] NULL,
	[IsMvc] [bit] NULL,
	[SortId] [int] NULL,
	[ShowInMenu] [bit] NULL,
	[Name] [nvarchar](512) NULL,
	[Controller] [nvarchar](512) NULL,
	[Icon] [nvarchar](50) NULL,
	[IsTab] [bit] NULL,
	[ApplicationDomainId] [int] NULL,
 CONSTRAINT [PK_ApplicationControls] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationDomains]    Script Date: 12/10/2018 11:40:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationDomains](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
 CONSTRAINT [PK_ApplicationDomains] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applications]    Script Date: 12/10/2018 11:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applications](
	[ApplicationName] [nvarchar](235) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 12/10/2018 11:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 12/10/2018 11:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[EPPN] [nvarchar](255) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 12/10/2018 11:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 12/10/2018 11:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 12/10/2018 11:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 12/10/2018 11:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 12/10/2018 11:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 12/10/2018 11:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 12/10/2018 11:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 12/10/2018 11:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 12/10/2018 11:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/10/2018 11:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[FacultyId] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditLog]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventDate] [datetime] NULL,
	[TableName] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Actions] [nvarchar](1) NULL,
	[OldData] [nvarchar](max) NULL,
	[NewData] [nvarchar](max) NULL,
	[ChangedColumns] [nvarchar](1000) NULL,
	[OriginalData] [nvarchar](max) NULL,
 CONSTRAINT [PK_AuditLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditLogDetails]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLogDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColumnName] [nvarchar](256) NULL,
	[OriginalValue] [nvarchar](max) NULL,
	[NewValue] [nvarchar](max) NULL,
	[AuditLogId] [int] NULL,
 CONSTRAINT [PK_AuditLogDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditLogShort]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLogShort](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventDate] [datetime] NULL,
	[TableName] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Actions] [nvarchar](1) NULL,
	[OldData] [nvarchar](max) NULL,
	[NewData] [nvarchar](max) NULL,
	[ChangedColumns] [nvarchar](1000) NULL,
	[OriginalData] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditLogsNew]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLogsNew](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuditLogId] [int] NULL,
	[UserName] [nvarchar](50) NULL,
	[EventDateUTC] [datetimeoffset](7) NULL,
	[EventType] [int] NULL,
	[TableName] [nvarchar](256) NULL,
	[RecordId] [nvarchar](256) NULL,
	[AuditLogId1] [int] NULL,
 CONSTRAINT [PK_AuditLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classrooms]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classrooms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacultyId] [int] NULL,
	[Name] [nvarchar](500) NULL,
	[Capacity] [int] NULL,
 CONSTRAINT [PK_Classrooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassSchedules]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassSchedules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SemestersClassScheduleID] [int] NOT NULL,
	[ProgrammeID] [int] NOT NULL,
	[ProgrammeCourseID] [int] NOT NULL,
	[TeacherID] [int] NOT NULL,
	[StudentGroupID] [int] NOT NULL,
	[ClassroomID] [int] NOT NULL,
	[Day] [int] NOT NULL,
	[Subject] [varchar](1000) NULL,
	[Location] [varchar](200) NULL,
	[Description] [varchar](255) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[IsAllDayEvent] [smallint] NOT NULL,
	[Color] [varchar](200) NULL,
	[RecurringRule] [varchar](500) NULL,
	[StartTimeSpan] [time](7) NULL,
 CONSTRAINT [PK_ClassSchedules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coefficients]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coefficients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Global] [bit] NULL,
	[HighSchool] [decimal](18, 3) NULL,
	[StateExtern] [decimal](18, 3) NULL,
	[StateIntern] [decimal](18, 3) NULL,
	[StateProject] [decimal](18, 3) NULL,
	[StateInExtern] [decimal](18, 3) NULL,
	[StateInIntern] [decimal](18, 3) NULL,
	[StatePartHigh] [decimal](18, 3) NULL,
	[SchoolCoef] [decimal](18, 3) NULL,
	[SchoolProject] [decimal](18, 3) NULL,
	[SchoolPartHigh] [decimal](18, 3) NULL,
	[InternationalCoef] [decimal](18, 3) NULL,
	[InternationalProject] [decimal](18, 3) NULL,
	[NoGradCoef] [decimal](18, 3) NULL,
	[NoGradPartHigh] [decimal](18, 3) NULL,
	[TestCoef] [decimal](18, 3) NULL,
	[StateExternNonProper] [decimal](18, 3) NULL,
	[StateInternNonProper] [decimal](18, 3) NULL,
	[SchoolNonProper] [decimal](18, 3) NULL,
	[NonGradNonProper] [decimal](18, 3) NULL,
	[InternationalNonProper] [decimal](18, 3) NULL,
	[InternationalPartHigh] [decimal](18, 3) NULL,
	[StateExtern2014] [decimal](18, 3) NULL,
	[StateIntert2014] [decimal](18, 3) NULL,
	[StateProject2014] [decimal](18, 3) NULL,
	[StateExternNonProper2014] [decimal](18, 3) NULL,
	[StateInternNonProper2014] [decimal](18, 3) NULL,
	[StatePartHigh2014] [decimal](18, 3) NULL,
	[HighSchool2014] [decimal](18, 3) NULL,
	[SingleParenting] [decimal](18, 3) NULL,
 CONSTRAINT [PK_Coefficients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Communities]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Communities](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[impCode] [nvarchar](50) NOT NULL,
	[MonComId] [int] NULL,
 CONSTRAINT [PK_Communities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complaints]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complaints](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantId] [int] NULL,
	[ComplaintStatusId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[DateApplied] [datetime] NULL,
	[ComplaintTypeId] [int] NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Complaints] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComplaintStatus]    Script Date: 12/10/2018 11:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComplaintStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_ComplaintStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComplaintType]    Script Date: 12/10/2018 11:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComplaintType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_ComplaintType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Config]    Script Date: 12/10/2018 11:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Config](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UnivName] [nvarchar](255) NULL,
	[UnivShortName] [nvarchar](255) NOT NULL,
	[Header] [nvarchar](255) NULL,
	[Footer] [nvarchar](255) NULL,
	[Logo] [nvarchar](255) NULL,
	[EnrolmentLoginDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_Config] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 12/10/2018 11:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 12/10/2018 11:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Credits] [decimal](5, 2) NOT NULL,
	[Lessons] [nvarchar](50) NOT NULL,
	[Semesters] [int] NOT NULL,
	[impCode] [nvarchar](50) NULL,
	[impNastProg] [nvarchar](50) NULL,
	[impWebID] [int] NULL,
	[tmpRevizija] [nvarchar](50) NULL,
	[StudyCycleID] [int] NOT NULL,
	[FacultyId] [int] NULL,
	[Active] [bit] NULL,
	[DocumentCode] [nvarchar](500) NULL,
	[IsDiploma] [bit] NULL,
	[DocumentName] [nvarchar](max) NULL,
	[StudentsLimit] [int] NULL,
	[IsUsingDescriptiveGrades] [bit] NULL,
	[IsLanguage] [bit] NULL,
	[SixSessionsToApply] [bit] NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoursesActivities]    Script Date: 12/10/2018 11:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoursesActivities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CoursesId] [int] NULL,
	[Kolokvium1] [decimal](5, 2) NULL,
	[Kolokvium2] [decimal](5, 2) NULL,
	[Kolokvium3] [decimal](5, 2) NULL,
	[Kolokvium4] [decimal](5, 2) NULL,
	[Domasna1] [decimal](5, 2) NULL,
	[Domasna2] [decimal](5, 2) NULL,
	[Domasna3] [decimal](5, 2) NULL,
	[Domasna4] [decimal](5, 2) NULL,
	[Seminarska1] [decimal](5, 2) NULL,
	[Seminarska2] [decimal](5, 2) NULL,
	[Seminarska3] [decimal](5, 2) NULL,
	[Seminarska4] [decimal](5, 2) NULL,
	[Posetenost] [decimal](5, 2) NULL,
	[Lab] [decimal](5, 2) NULL,
	[Aktivnost] [decimal](5, 2) NULL,
	[Usmen] [decimal](5, 2) NULL,
	[Pismen] [decimal](5, 2) NULL,
	[Limit5] [decimal](18, 2) NULL,
	[Limit6] [decimal](18, 2) NULL,
	[Limit7] [decimal](18, 2) NULL,
	[Limit8] [decimal](18, 2) NULL,
	[Limit9] [decimal](18, 2) NULL,
	[Limit10] [decimal](18, 2) NULL,
 CONSTRAINT [PK_CoursesActivities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoursesDependencies]    Script Date: 12/10/2018 11:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoursesDependencies](
	[ProgrammeCourseId] [int] NULL,
	[DependenceCourseId] [int] NULL,
	[Passed] [bit] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [bit] NULL,
 CONSTRAINT [PK_CoursesDependencies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoursesInMedDepartments]    Script Date: 12/10/2018 11:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoursesInMedDepartments](
	[CourseId] [int] NOT NULL,
	[MedDepartmentId] [int] NOT NULL,
 CONSTRAINT [PK_CoursesInMedDepartments] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC,
	[MedDepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DescriptiveGrades]    Script Date: 12/10/2018 11:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DescriptiveGrades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [int] NULL,
 CONSTRAINT [PK_DescriptiveGrades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiplomaThesis]    Script Date: 12/10/2018 11:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiplomaThesis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ThesisNo] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[StudentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[MentorID] [int] NOT NULL,
	[Member1ID] [int] NULL,
	[Member2ID] [int] NULL,
	[Credits] [decimal](5, 2) NOT NULL,
	[Grade] [int] NULL,
	[ApplicationDate] [datetime] NOT NULL,
	[SubmissionDate] [datetime] NULL,
	[PresentationDate] [datetime] NULL,
	[Discarded] [bit] NOT NULL,
	[SupplementNo] [nvarchar](20) NULL,
	[SupplementDate] [datetime] NULL,
	[MasterDiplomaBookNo] [nvarchar](20) NULL,
	[_MasterDiplomaBookNo] [nvarchar](20) NULL,
 CONSTRAINT [PK_DiplomaThesis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorateDegrees]    Script Date: 12/10/2018 11:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorateDegrees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Degree] [nvarchar](250) NULL,
 CONSTRAINT [PK_DoctorateDegrees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorateRanks]    Script Date: 12/10/2018 11:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorateRanks](
	[Id] [int] NOT NULL,
	[Rank] [nvarchar](250) NULL,
 CONSTRAINT [PK_DoctorateRanks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentParts]    Script Date: 12/10/2018 11:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentParts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Text] [nvarchar](max) NULL,
	[Field] [nvarchar](255) NULL,
	[Type] [nvarchar](255) NULL,
 CONSTRAINT [PK_DocumentParts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentRequests]    Script Date: 12/10/2018 11:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentRequests](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FacultyDocumentID] [int] NULL,
	[StudentID] [int] NULL,
	[DateRequest] [datetime] NULL,
	[Active] [bit] NULL,
	[Payed] [bit] NULL,
	[DateObserved] [datetime] NULL,
	[Notified] [bit] NULL,
	[Fields] [xml] NULL,
	[Archive] [int] NULL,
	[Downloaded] [bit] NULL,
 CONSTRAINT [PK_DocumentRequests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 12/10/2018 11:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Description] [nvarchar](max) NULL,
	[TemplatePath] [nvarchar](500) NULL,
	[Active] [bit] NULL,
	[XmlPath] [nvarchar](500) NULL,
	[FunctionId] [int] NULL,
	[SchemePath] [nvarchar](500) NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EducationLevels]    Script Date: 12/10/2018 11:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationLevels](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EducationLevel] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[SortId] [int] NULL,
 CONSTRAINT [PK_EducationLevels] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EducationTypes]    Script Date: 12/10/2018 11:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationTypes](
	[ID] [int] NOT NULL,
	[EducationName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EKTSGrade]    Script Date: 12/10/2018 11:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EKTSGrade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExamPassedId] [int] NULL,
	[Kolokvium1] [decimal](5, 2) NULL,
	[Kolokvium2] [decimal](5, 2) NULL,
	[Kolokvium3] [decimal](5, 2) NULL,
	[Kolokvium4] [decimal](5, 2) NULL,
	[Domasna1] [decimal](5, 2) NULL,
	[Domasna2] [decimal](5, 2) NULL,
	[Domasna3] [decimal](5, 2) NULL,
	[Domasna4] [decimal](5, 2) NULL,
	[Seminarska1] [decimal](5, 2) NULL,
	[Seminarska2] [decimal](5, 2) NULL,
	[Seminarska3] [decimal](5, 2) NULL,
	[Seminarska4] [decimal](5, 2) NULL,
	[Posetenost] [decimal](5, 2) NULL,
	[Lab] [decimal](5, 2) NULL,
	[Aktivnost] [decimal](5, 2) NULL,
	[Usmen] [decimal](5, 2) NULL,
	[Pismen] [decimal](5, 2) NULL,
	[FormulaId] [int] NULL,
 CONSTRAINT [PK_EKTSGrade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailAccounts]    Script Date: 12/10/2018 11:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailAccounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SmtpHost] [nvarchar](500) NULL,
	[SmtpPort] [int] NULL,
	[Username] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[MailsRemaining] [int] NULL,
	[MailsSent] [bigint] NULL,
	[DateReset] [datetime] NULL,
 CONSTRAINT [PK_EmailAccounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emails]    Script Date: 12/10/2018 11:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Body] [nvarchar](max) NULL,
	[Sender] [nvarchar](max) NULL,
	[Recipients] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[DateSent] [datetime] NULL,
	[IsSent] [bit] NULL,
	[TotalRecipients] [int] NULL,
	[Attachments] [nvarchar](max) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[NumberRetries] [int] NULL,
 CONSTRAINT [PK_Emails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnrolmentStudyTypes]    Script Date: 12/10/2018 11:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnrolmentStudyTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_EnrolmentStudyTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnrolmentTerm]    Script Date: 12/10/2018 11:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnrolmentTerm](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Info] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[StudyYear] [int] NULL,
 CONSTRAINT [PK_EnrolmentTerm] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntrustedSubjects]    Script Date: 12/10/2018 11:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntrustedSubjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[TeacherId] [int] NULL,
	[DateReleased] [datetime] NULL,
 CONSTRAINT [PK_EntrustedSubjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equivalence]    Script Date: 12/10/2018 11:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equivalence](
	[CourseId] [int] NOT NULL,
	[ProgrammeCourseId] [int] NOT NULL,
 CONSTRAINT [PK_Equivalence] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC,
	[ProgrammeCourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamsApplied]    Script Date: 12/10/2018 11:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamsApplied](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SessionID] [int] NOT NULL,
	[StudentCourseID] [int] NOT NULL,
	[Partial] [bit] NOT NULL,
	[TeacherID] [int] NOT NULL,
	[DateApplied] [datetime] NULL,
	[HasApplication] [bit] NULL,
	[Tax] [decimal](18, 0) NULL,
	[IsStudent] [bit] NULL,
 CONSTRAINT [PK_ExamsApplied] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [IX_ExamsApplied_UniqueConstraint] UNIQUE NONCLUSTERED 
(
	[SessionID] ASC,
	[StudentCourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamSchedules]    Script Date: 12/10/2018 11:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamSchedules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SessionID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[ExamDateTime] [datetime] NOT NULL,
	[ExamPlaces] [nvarchar](255) NULL,
 CONSTRAINT [PK_ExamSchedules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [IX_ExamSchedules_UniqueConstraint] UNIQUE NONCLUSTERED 
(
	[SessionID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamSessions]    Script Date: 12/10/2018 11:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamSessions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[OnlyBefore2001Students] [bit] NOT NULL,
	[Partial] [bit] NOT NULL,
	[SessionTypeID] [int] NOT NULL,
	[FacultyId] [int] NULL,
	[ExamSessionMasterId] [int] NULL,
	[ChStartDate] [datetime] NULL,
	[ChEndDate] [datetime] NULL,
 CONSTRAINT [PK_ExamSessions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamSessionsMaster]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamSessionsMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[SessionTypeId] [int] NULL,
	[Partial] [bit] NULL,
	[ChStartDate] [datetime] NULL,
	[ChEndDate] [datetime] NULL,
 CONSTRAINT [PK_ExamSessionsMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamSessionsStudyCycles]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamSessionsStudyCycles](
	[ExamSessionId] [int] NOT NULL,
	[StudyCycleId] [int] NOT NULL,
 CONSTRAINT [PK_ExamSessionsStudyCycles] PRIMARY KEY CLUSTERED 
(
	[ExamSessionId] ASC,
	[StudyCycleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamSessionTypes]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamSessionTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SessionType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ExamSessionTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamsInClassrooms]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamsInClassrooms](
	[ClassroomID] [int] NOT NULL,
	[ExamScheduleID] [int] NOT NULL,
 CONSTRAINT [PK_ExamsInClassrooms_1] PRIMARY KEY CLUSTERED 
(
	[ClassroomID] ASC,
	[ExamScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamsPassed]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamsPassed](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Grade] [int] NOT NULL,
	[ExamDate] [datetime] NULL,
	[Discarded] [bit] NOT NULL,
	[HasApplication] [bit] NOT NULL,
	[ExamAppliedId] [int] NULL,
	[StudentId] [int] NULL,
	[CourseId] [int] NULL,
	[HasPaid] [bit] NULL,
	[EKTSPoints] [decimal](18, 2) NULL,
	[EKTSGrade] [int] NULL,
	[EKTSType] [bit] NULL,
	[Comment] [nvarchar](1000) NULL,
 CONSTRAINT [PK_ExamsPassed] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamsSessionsDates]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamsSessionsDates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExamsSessionId] [int] NULL,
	[DateFrom] [datetime] NULL,
	[DateTo] [datetime] NULL,
 CONSTRAINT [PK_ExamsSessionsDates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Address] [nvarchar](500) NULL,
	[Phone] [varchar](250) NULL,
	[Fax] [varchar](250) NULL,
	[Logo] [varchar](256) NULL,
	[Url] [varchar](256) NULL,
	[ZiroSmetka] [varchar](500) NULL,
	[CelNaDoznaka] [nvarchar](500) NULL,
	[NazivNaPrimac] [nvarchar](500) NULL,
	[BankaNaPrimac] [nvarchar](500) NULL,
	[UplatnaSmetka] [varchar](256) NULL,
	[PrihodnaSifra] [varchar](256) NULL,
	[SmetkaNaBudKor] [varchar](256) NULL,
	[ShortName] [nvarchar](256) NULL,
	[ShortIndeks] [nvarchar](50) NULL,
	[IsUsingTax] [bit] NULL,
	[TaxUserName] [nvarchar](500) NULL,
	[TaxPassword] [nvarchar](500) NULL,
	[CoursesAgainPercent] [decimal](18, 2) NULL,
	[IsUsingMoodle] [bit] NULL,
	[MoodleString] [nvarchar](max) NULL,
	[MoodleTable] [nvarchar](max) NULL,
	[MoodleTableInsert] [nvarchar](max) NULL,
	[RankingTypeId] [int] NULL,
	[FzomPlaceCode] [nvarchar](50) NULL,
	[IsUsingTickets] [bit] NULL,
	[MonFaxId] [int] NULL,
	[IsUsingPaymentForApplying] [int] NULL,
	[DiplomaThesisStartFrom] [int] NULL,
	[MasterThesisStartFrom] [int] NULL,
	[DiplomaThesisAutoIncrement] [bit] NULL,
	[CoursesSortBy] [nvarchar](255) NULL,
	[ElectivesForFacultyOnlyMandatory] [bit] NULL,
	[YearForStatus] [int] NULL,
	[Domain] [nvarchar](256) NULL,
	[StudentsDomain] [nvarchar](256) NULL,
	[IsSumCreditsCondForDiploma] [bit] NULL,
	[IsGroupTeachersForApplying] [bit] NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacultyCourses]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacultyCourses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NULL,
	[FacultyId] [int] NULL,
	[Credits] [decimal](18, 2) NULL,
	[Code] [nvarchar](50) NULL,
	[Active] [bit] NULL,
	[SemesterTypeId] [int] NULL,
	[Semester] [int] NULL,
 CONSTRAINT [PK_FacultyCourses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacultyDocuments]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacultyDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fields] [xml] NULL,
	[PaymentTypeId] [int] NULL,
	[DocumentId] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_FacultyDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormulaActivities]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormulaActivities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Short] [nvarchar](500) NULL,
	[SortId] [int] NULL,
 CONSTRAINT [PK_FormulaActivities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FzoUploads]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FzoUploads](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateEvent] [datetime] NULL,
	[FacultyId] [int] NULL,
	[XmlData] [xml] NULL,
	[SemesterId] [int] NULL,
	[IsPartial] [bit] NULL,
 CONSTRAINT [PK_FzoUploads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GlobalDocuments]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[XmlContents] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_GlobalDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GradeBookFormulas]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GradeBookFormulas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[FormulaJson] [nvarchar](max) NULL,
	[TeacherId] [int] NULL,
	[CourseId] [int] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_GradeBookFormulas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GradeDescriptions]    Script Date: 12/10/2018 11:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GradeDescriptions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Grade] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GraduationCourses]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GraduationCourses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SchoolCourseId] [int] NULL,
	[ApplicantId] [int] NULL,
	[Grades] [nvarchar](500) NULL,
	[Type] [bit] NULL,
	[Name] [nvarchar](500) NULL,
	[Extern] [bit] NULL,
	[Percentile] [decimal](18, 3) NULL,
	[ExternSeccond] [bit] NULL,
	[Intern] [bit] NULL,
	[Status] [bit] NULL,
	[GraduationType] [int] NULL,
	[MatrixCode] [int] NULL,
	[ExternThird] [bit] NULL,
 CONSTRAINT [PK_GraduationCourses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GraduationType]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GraduationType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_GraduationType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupCourses]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupCourses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudyGroupId] [int] NULL,
	[SchoolTypeId] [int] NULL,
	[CourseId] [int] NULL,
	[Extern] [bit] NULL,
 CONSTRAINT [PK_GroupCourses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HrInstitutes]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HrInstitutes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_HrInstitutes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HrRoles]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HrRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_HrRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HrUsers]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HrUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Surname] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[FacultyId] [int] NULL,
	[HrRoleId] [int] NULL,
	[AcademicDegreeId] [int] NULL,
	[AcademicRankId] [int] NULL,
	[HrInstituteId] [int] NULL,
	[Eepn] [nvarchar](512) NULL,
	[_userid] [nvarchar](512) NULL,
	[_eepnFull] [nvarchar](512) NULL,
 CONSTRAINT [PK_HrUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INFO]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFO](
	[Професионални студии по информатика (3г)] [float] NULL,
	[F2] [float] NULL,
	[F3] [nvarchar](255) NULL,
	[F4] [nvarchar](255) NULL,
	[F5] [float] NULL,
	[F6] [nvarchar](255) NULL,
	[F7] [nvarchar](255) NULL,
	[F8] [float] NULL,
	[F9] [nvarchar](255) NULL,
	[F10] [nvarchar](255) NULL,
	[F11] [nvarchar](255) NULL,
	[F12] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Language] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalDocuments]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NULL,
	[GlobalDocumentId] [int] NULL,
	[FacultyId] [int] NULL,
	[XmlContents] [nvarchar](max) NULL,
 CONSTRAINT [PK_LocalDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MainMenu]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_MainMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MainMenuLocale]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainMenuLocale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuItemName] [nvarchar](500) NULL,
	[Locale] [nvarchar](50) NULL,
	[MainMenuId] [int] NULL,
 CONSTRAINT [PK_MainMenuLocale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterThesis]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterThesis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ThesisNo] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[StudentID] [int] NOT NULL,
	[MentorID] [int] NOT NULL,
	[CommisionPresidentID] [int] NOT NULL,
	[Member3ID] [int] NULL,
	[Credits] [decimal](5, 2) NOT NULL,
	[Grade] [int] NULL,
	[ApplicationDate] [datetime] NOT NULL,
	[SubmissionDate] [datetime] NULL,
	[PresentationDate] [datetime] NULL,
	[Discarded] [bit] NOT NULL,
	[SupplementNo] [nvarchar](20) NULL,
	[SupplementDate] [datetime] NULL,
	[MasterMagisterBookNo] [nvarchar](20) NULL,
 CONSTRAINT [PK_MasterThesis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedDepartments]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedDepartments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Users] [nvarchar](max) NULL,
 CONSTRAINT [PK_MedDepartments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Memberships]    Script Date: 12/10/2018 11:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Memberships](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowsStart] [datetime] NOT NULL,
	[Comment] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoodleSync]    Script Date: 12/10/2018 11:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoodleSync](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NULL,
	[MoodleCourseId] [nvarchar](max) NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_MoodleSync] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nationalities]    Script Date: 12/10/2018 11:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationalities](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nationality] [nvarchar](50) NOT NULL,
	[impSifra] [nvarchar](50) NOT NULL,
	[EnrolmentActive] [bit] NULL,
 CONSTRAINT [PK_Nationalities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 12/10/2018 11:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[FacultyId] [int] NULL,
 CONSTRAINT [PK_PaymentTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PenaltiesCourses]    Script Date: 12/10/2018 11:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PenaltiesCourses](
	[CourseId] [int] NOT NULL,
	[StudentPenaltiesId] [int] NOT NULL,
 CONSTRAINT [PK_PenaltiesCourses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC,
	[StudentPenaltiesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Places]    Script Date: 12/10/2018 11:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Places](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Post] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Places] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 12/10/2018 11:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [nvarchar](4000) NOT NULL,
	[PropertyValueStrings] [nvarchar](4000) NOT NULL,
	[PropertyValueBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgrammeModules]    Script Date: 12/10/2018 11:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgrammeModules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[StudyCycleID] [int] NOT NULL,
	[RevisionID] [int] NOT NULL,
	[Curriculum] [nvarchar](max) NULL,
	[CurriculumPath] [nvarchar](255) NULL,
	[DurationSemesters] [int] NULL,
	[ECTScredits] [float] NULL,
	[DiplomaName] [nvarchar](2000) NULL,
	[FacultyId] [int] NULL,
	[CoursesNumber] [int] NULL,
	[Kvalifikacija] [nvarchar](4000) NULL,
	[Oblast] [nvarchar](4000) NULL,
	[Uslovi] [nvarchar](4000) NULL,
	[Baranja] [nvarchar](4000) NULL,
	[Uverenie] [nvarchar](4000) NULL,
	[Ocenuvanje] [nvarchar](4000) NULL,
	[Ponatamosni] [nvarchar](4000) NULL,
	[ProfesionalenStatus] [nvarchar](4000) NULL,
	[DopolnitelnoStudent] [nvarchar](4000) NULL,
	[DopolnitelnoUstanova] [nvarchar](4000) NULL,
	[Baranja1] [nvarchar](4000) NULL,
	[PlaceId] [int] NULL,
	[NazivKvalifikacija] [nvarchar](max) NULL,
	[TipStudii] [nvarchar](max) NULL,
	[Traenje] [nvarchar](max) NULL,
	[Adresa] [nvarchar](max) NULL,
	[ScientificClasifficationCode] [nvarchar](50) NULL,
	[ScientificClasifficationSubCode] [nvarchar](50) NULL,
	[LanguageId] [int] NULL,
 CONSTRAINT [PK_ProgrammeModules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programmes]    Script Date: 12/10/2018 11:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programmes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[StudyCycleID] [int] NOT NULL,
	[RevisionID] [int] NOT NULL,
	[Curriculum] [nvarchar](max) NULL,
	[CurriculumPath] [nvarchar](255) NULL,
	[DurationSemesters] [int] NULL,
	[ECTScredits] [float] NULL,
	[DiplomaName] [nvarchar](2000) NULL,
	[FacultyId] [int] NULL,
	[CoursesNumber] [int] NULL,
	[Kvalifikacija] [nvarchar](4000) NULL,
	[Oblast] [nvarchar](4000) NULL,
	[Uslovi] [nvarchar](4000) NULL,
	[Baranja] [nvarchar](4000) NULL,
	[Uverenie] [nvarchar](4000) NULL,
	[Ocenuvanje] [nvarchar](4000) NULL,
	[Ponatamosni] [nvarchar](4000) NULL,
	[ProfesionalenStatus] [nvarchar](4000) NULL,
	[DopolnitelnoStudent] [nvarchar](4000) NULL,
	[DopolnitelnoUstanova] [nvarchar](4000) NULL,
	[Baranja1] [nvarchar](4000) NULL,
	[PlaceId] [int] NULL,
	[NazivKvalifikacija] [nvarchar](max) NULL,
	[TipStudii] [nvarchar](max) NULL,
	[Traenje] [nvarchar](max) NULL,
	[Adresa] [nvarchar](max) NULL,
	[ScientificClasifficationCode] [nvarchar](50) NULL,
	[ScientificClasifficationSubCode] [nvarchar](50) NULL,
	[LanguageId] [int] NULL,
 CONSTRAINT [PK_Programmes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgrammesCourses]    Script Date: 12/10/2018 11:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgrammesCourses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProgrammeID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[Semester] [int] NOT NULL,
	[MandatoryOptional] [bit] NOT NULL,
	[CourseCode] [nvarchar](10) NULL,
	[Credits] [decimal](5, 2) NULL,
	[SemesterTypeId] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_ProgrammesCourses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgrammesGroups]    Script Date: 12/10/2018 11:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgrammesGroups](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[FacultyId] [int] NULL,
 CONSTRAINT [PK_ProgrammesGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgrammesGroupsProgrammes]    Script Date: 12/10/2018 11:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgrammesGroupsProgrammes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProgrammeId] [int] NULL,
	[ProgrammesGroupId] [int] NULL,
 CONSTRAINT [PK_ProgrammesGroupsProgrammes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotaNationalities]    Script Date: 12/10/2018 11:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotaNationalities](
	[NationalityId] [int] NOT NULL,
	[StudyProgrammeId] [int] NOT NULL,
 CONSTRAINT [PK_QuotaNationalities] PRIMARY KEY CLUSTERED 
(
	[NationalityId] ASC,
	[StudyProgrammeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotaPrices]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotaPrices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuotaID] [int] NOT NULL,
	[ProgrammeID] [int] NOT NULL,
	[StartYear] [int] NOT NULL,
	[CreditPrice] [decimal](10, 2) NOT NULL,
	[YearPrice] [decimal](10, 2) NOT NULL,
	[FullName] [nvarchar](500) NULL,
 CONSTRAINT [PK_QuotaPrices] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [IX_QuotaPrices_UniqueConstraint] UNIQUE NONCLUSTERED 
(
	[QuotaID] ASC,
	[ProgrammeID] ASC,
	[StartYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotaRegular]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotaRegular](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudyProgrammeId] [int] NULL,
	[QuotaId] [int] NULL,
	[TermId] [int] NULL,
	[Number] [int] NULL,
	[Price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_QuotaRegular] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quotas]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuotaName] [nvarchar](50) NOT NULL,
	[FullTime] [bit] NOT NULL,
 CONSTRAINT [PK_Quotas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RangListPublish]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RangListPublish](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[RangListId] [int] NULL,
	[PathPDF] [nvarchar](max) NULL,
 CONSTRAINT [PK_RangListPublish] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RangLists]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RangLists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[TermId] [int] NULL,
	[StudyCycleId] [int] NULL,
	[Final] [bit] NULL,
	[Ranged] [bit] NULL,
	[Published] [bit] NULL,
	[IsList] [bit] NULL,
	[DatePublished] [datetime] NULL,
 CONSTRAINT [PK_RangLists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Revisions]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Revisions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RevisionName] [nvarchar](50) NOT NULL,
	[StartYear] [int] NOT NULL,
	[FacultyId] [int] NULL,
 CONSTRAINT [PK_Revisions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesApplicationControls]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesApplicationControls](
	[RoleId] [nvarchar](256) NOT NULL,
	[ApplicationControlId] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_RolesApplicationControls_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scheduler]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scheduler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [varchar](1000) NULL,
	[Location] [varchar](200) NULL,
	[Description] [varchar](255) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[IsAllDayEvent] [smallint] NOT NULL,
	[Color] [varchar](200) NULL,
	[RecurringRule] [varchar](500) NULL,
	[UserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Scheduler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolCourses]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolCourses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[FirstExtern] [bit] NULL,
	[SeccondExtern] [bit] NULL,
	[Intern] [bit] NULL,
	[ThirdExtern] [bit] NULL,
 CONSTRAINT [PK_SchoolCourses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schools]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schools](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[CommunityId] [int] NULL,
 CONSTRAINT [PK_Schools] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolType]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_SchoolType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seed_address]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seed_address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SemesterDates]    Script Date: 12/10/2018 11:41:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SemesterDates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SemesterId] [int] NULL,
	[DateFrom] [datetime] NULL,
	[DateTo] [datetime] NULL,
	[FacultyId] [int] NULL,
 CONSTRAINT [PK_SemesterDates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semesters]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semesters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[SemesterTypeId] [int] NULL,
	[FacultyId] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[ChStartDate] [datetime] NULL,
	[ChEndDate] [datetime] NULL,
 CONSTRAINT [PK_Semesters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SemestersClassSchedules]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SemestersClassSchedules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[FacultyID] [int] NOT NULL,
	[SemesterID] [int] NOT NULL,
	[StatusLocked] [bit] NOT NULL,
 CONSTRAINT [PK_SemestersClassSchedules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SemestersPayments]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SemestersPayments](
	[StudentSemesterID] [int] NOT NULL,
	[StudentPaymentID] [int] NOT NULL,
 CONSTRAINT [PK_SemestersPayments] PRIMARY KEY CLUSTERED 
(
	[StudentSemesterID] ASC,
	[StudentPaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [IX_SemestersPayments_StudentPaymentID] UNIQUE NONCLUSTERED 
(
	[StudentPaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SemesterStudyCycles]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SemesterStudyCycles](
	[SemesterId] [int] NULL,
	[StudyCycleId] [int] NULL,
	[FacultyId] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SemesterStudyCycles_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SemesterType]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SemesterType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fallspring] [bit] NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_SemesterType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeminarThesis]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeminarThesis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ThesisNo] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[StudentID] [int] NOT NULL,
	[StudentCourseID] [int] NOT NULL,
	[MentorID] [int] NOT NULL,
	[SubmissionDate] [datetime] NOT NULL,
	[AcceptionDate] [datetime] NULL,
	[Grade] [int] NULL,
	[Discarded] [bit] NOT NULL,
 CONSTRAINT [PK_SeminarThesis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SignatureTypes]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignatureTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
 CONSTRAINT [PK_SignatureTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SignOuts]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignOuts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DocumentNo] [nvarchar](20) NULL,
	[Date] [datetime] NOT NULL,
	[StudentID] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_SignOuts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SimpleAudit]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SimpleAudit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TimeStamp] [datetime] NULL,
	[FunctionExecuted] [varchar](max) NULL,
	[IndexNo] [nvarchar](10) NULL,
 CONSTRAINT [PK_SimpleAudit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPECDeletionExams]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPECDeletionExams](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExamPassedID] [int] NOT NULL,
	[StudentCourseID] [int] NOT NULL,
	[SessionId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Indeks] [nvarchar](50) NOT NULL,
	[Grade] [int] NOT NULL,
	[TeacherID] [int] NOT NULL,
 CONSTRAINT [PK_AllowForDeletionSPEC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecialCases]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialCases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[EnrolmentActive] [bit] NULL,
 CONSTRAINT [PK_SpecialCases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentApplicants]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentApplicants](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Surname] [nvarchar](255) NOT NULL,
	[FathersName] [nvarchar](255) NOT NULL,
	[BridesName] [nvarchar](255) NULL,
	[Sex] [bit] NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[BirthPlaceID] [int] NULL,
	[BirthPlaceOther] [nvarchar](255) NULL,
	[BirthCommunityID] [int] NOT NULL,
	[BirthCommunityOther] [nvarchar](255) NULL,
	[BirthCountryID] [int] NOT NULL,
	[EMBG] [nvarchar](50) NOT NULL,
	[CitizenshipID] [int] NOT NULL,
	[EducationID] [int] NULL,
	[EducationOther] [nvarchar](50) NULL,
	[EducationProfession] [nvarchar](50) NOT NULL,
	[HighSchoolDiplomaNr] [nvarchar](50) NOT NULL,
	[PreviousEducationYear] [int] NOT NULL,
	[PreviousEducationGrade] [nvarchar](50) NOT NULL,
	[PreviousEducationLanguageID] [int] NOT NULL,
	[PreviousEducationCountryID] [int] NOT NULL,
	[NationalityID] [int] NOT NULL,
	[ApplicationDate] [datetime] NOT NULL,
	[ApplicationNo] [int] NOT NULL,
	[Employment] [nvarchar](255) SPARSE  NULL,
	[PermanentAddress] [nvarchar](255) NOT NULL,
	[Telephone] [nvarchar](50) NULL,
	[GSM] [nvarchar](50) NULL,
	[EMail] [nvarchar](255) NULL,
	[Profession] [nvarchar](255) SPARSE  NULL,
	[ProfessionFather] [nvarchar](255) NULL,
	[EducationFather] [int] NULL,
	[ProfessionMother] [nvarchar](255) NULL,
	[EducationMother] [int] NULL,
	[LivingPlaceID] [int] NULL,
	[LivingPlaceOther] [nvarchar](50) NULL,
	[LivingCountryID] [int] NOT NULL,
	[StudyStyle] [bit] NOT NULL,
	[StartProgrammeID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[PreviousEducationCredits] [int] NOT NULL,
	[HighSchoolPoints] [decimal](8, 3) NOT NULL,
	[FirstTestingPoints] [decimal](8, 3) NOT NULL,
	[SecondTestingPoints] [decimal](8, 3) NOT NULL,
	[AdditionalPoints] [decimal](8, 3) NOT NULL,
	[Rank] [int] NULL,
 CONSTRAINT [PK_StudentApplicants] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentGroups]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SemesterId] [int] NULL,
	[GroupName] [nvarchar](500) NULL,
	[Description] [nvarchar](55) NULL,
	[CourseId] [int] NULL,
	[TeacherId] [int] NULL,
 CONSTRAINT [PK_StudentGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentPayments]    Script Date: 12/10/2018 11:41:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentPayments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[AmountPayed] [decimal](10, 2) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[PaymentTypeID] [int] NOT NULL,
	[PostPaidType] [bit] NULL,
 CONSTRAINT [PK_StudentPayments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentPenalties]    Script Date: 12/10/2018 11:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentPenalties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentsId] [int] NULL,
	[DateFrom] [datetime] NULL,
	[DateTo] [datetime] NULL,
	[Reason] [nvarchar](max) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_StudentPenalties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 12/10/2018 11:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Indeks] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Surname] [nvarchar](255) NOT NULL,
	[FathersName] [nvarchar](255) NOT NULL,
	[BridesName] [nvarchar](255) NULL,
	[Sex] [bit] NOT NULL,
	[EMBG] [nvarchar](20) NOT NULL,
	[CitizenshipID] [int] NOT NULL,
	[NationalityID] [int] NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[BirthPlaceID] [int] NULL,
	[BirthPlaceOther] [nvarchar](255) NULL,
	[BirthCommunityID] [int] NULL,
	[BirthCommunityOther] [nvarchar](255) NULL,
	[BirthCountryID] [int] NULL,
	[LivingPlaceID] [int] NULL,
	[LivingPlaceOther] [nvarchar](255) NULL,
	[LivingCommunityID] [int] NULL,
	[LivingCommunityOther] [nvarchar](255) NULL,
	[LivingCountryID] [int] NULL,
	[PermanentAddress] [nvarchar](255) NULL,
	[TemporaryAddress] [nvarchar](255) NULL,
	[PreviousEducation] [nvarchar](255) NULL,
	[PreviousEducationProfession] [nvarchar](50) NULL,
	[PreviousEducationYear] [int] NULL,
	[PreviousEducationGrade] [nvarchar](50) NULL,
	[PreviousEducationLanguageID] [int] NULL,
	[PreviousEducationCountryID] [int] NULL,
	[PreviousEducationCredits] [decimal](5, 2) NULL,
	[HighSchoolDiplomaNr] [nvarchar](50) NULL,
	[StartYear] [int] NOT NULL,
	[StudyCycleID] [int] NOT NULL,
	[StartProgrammeID] [int] NOT NULL,
	[StartQuotaPriceID] [int] NOT NULL,
	[CurrentRevisionID] [int] NOT NULL,
	[StudentStatusID] [int] NOT NULL,
	[MasterStudentBookNo] [nvarchar](20) NULL,
	[IsUsingScholarsip] [bit] NOT NULL,
	[ScholarshipInfo] [nvarchar](255) NULL,
	[Telephone] [nvarchar](50) NULL,
	[GSM] [nvarchar](50) NULL,
	[EMail] [nvarchar](255) NULL,
	[Employment] [nvarchar](255) NULL,
	[Profession] [nvarchar](255) NULL,
	[ProfessionFather] [nvarchar](255) NULL,
	[ProfessionMother] [nvarchar](255) NULL,
	[FatherEducation] [int] NULL,
	[MotherEducation] [int] NULL,
	[NationalityOther] [nvarchar](100) NULL,
	[CitizenshipOther] [nvarchar](100) NULL,
	[Password] [nvarchar](255) NULL,
	[UserNameID] [uniqueidentifier] NULL,
	[FacultyId] [int] NULL,
	[LastProgrammeId] [int] NULL,
	[SumCredits] [decimal](18, 2) NULL,
	[SumAverage] [decimal](18, 2) NULL,
	[PostPaidCredit] [decimal](10, 2) NULL,
	[Passport] [nvarchar](50) NULL,
	[PassportExpiryDate] [date] NULL,
	[LastQuotaPriceId] [int] NULL,
	[SignedOut] [bit] NULL,
	[CurrentYear] [int] NULL,
	[MedicalCheck] [bit] NULL,
	[ServiceComment] [nvarchar](max) NULL,
	[ImportHelp] [nvarchar](max) NULL,
	[SchoolTypeId] [int] NULL,
	[IsOnlyDiploma] [bit] NULL,
	[_SumCredits] [decimal](18, 2) NULL,
	[_SumAverage] [decimal](18, 2) NULL,
	[_CountCourses] [int] NULL,
	[_CurrentYear] [int] NULL,
	[IsThreeYears] [bit] NULL,
	[GroupName] [nvarchar](255) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentsActivitiesResults]    Script Date: 12/10/2018 11:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsActivitiesResults](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CoursesActivitiesId] [int] NULL,
	[StudentsId] [int] NULL,
	[Points] [decimal](18, 2) NULL,
 CONSTRAINT [PK_StudentsActivitiesResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentsCourses]    Script Date: 12/10/2018 11:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsCourses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentSemesterID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[Signature] [bit] NOT NULL,
	[Canceled] [bit] NOT NULL,
	[TeacherId] [int] NULL,
	[SignatureTypeId] [int] NULL,
	[FormulaJson] [nvarchar](max) NULL,
	[GroupName] [nvarchar](255) NULL,
 CONSTRAINT [PK_StudentsCourses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [IX_StudentsCourses_UniqueConstraint] UNIQUE NONCLUSTERED 
(
	[StudentSemesterID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentsInGroups]    Script Date: 12/10/2018 11:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsInGroups](
	[StudentId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_StudentsInGroups] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentsOLD]    Script Date: 12/10/2018 11:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsOLD](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MasterEnrolmentBookNo] [nvarchar](20) NULL,
	[Indeks] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NULL,
	[Surname] [nvarchar](100) NULL,
	[MiddleName] [nvarchar](100) NULL,
	[Sex] [bit] NULL,
	[BirthDate] [datetime] NULL,
	[BirthPlaceId] [int] NULL,
	[NationalityId] [int] NULL,
	[CitizenshipId] [int] NULL,
	[Programme] [nvarchar](200) NULL,
	[DiplomaName] [nvarchar](200) NULL,
	[MasterDiplomaBookNo] [nvarchar](20) NULL,
	[SupplementNo] [nvarchar](50) NULL,
	[SupplementDate] [datetime] NULL,
	[AverageGrade] [decimal](7, 2) NULL,
	[Credits] [decimal](7, 2) NULL,
	[IsUsingScoralship] [bit] NULL,
	[ScoralshipInfo] [nvarchar](500) NULL,
	[IsUsingLoan] [bit] NULL,
	[LoanInfo] [nvarchar](500) NULL,
	[FacultyId] [int] NULL,
	[StudyCycleId] [int] NULL,
	[PrevEducationCredits] [decimal](7, 2) NULL,
	[PresentationDiplomaDate] [datetime] NULL,
	[ThesisNo] [nvarchar](20) NULL,
 CONSTRAINT [PK_StudentsOLD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentsSemesters]    Script Date: 12/10/2018 11:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsSemesters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SemesterID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[ProgrammeID] [int] NOT NULL,
	[QuotaPriceID] [int] NOT NULL,
	[SpecialCasePercent] [decimal](10, 8) NOT NULL,
	[AmountToPay] [decimal](18, 2) NULL,
	[AmountPayed] [decimal](18, 2) NULL,
	[Semester] [int] NULL,
	[FullTime] [bit] NOT NULL,
	[Verified] [bit] NOT NULL,
	[Verification_Date] [datetime] NULL,
	[OldPaymentMode] [bit] NOT NULL,
	[HasDocuments] [bit] NULL,
	[Tax] [decimal](18, 0) NULL,
	[Comment] [nvarchar](max) NULL,
	[StudentsComment] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[DateEvent] [datetime] NULL,
	[TicketStatus] [int] NULL,
	[TicketId] [nvarchar](500) NULL,
	[GroupName] [nvarchar](255) NULL,
 CONSTRAINT [PK_StudentsSemesters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [IX_StudentsSemesters_UniqueConstraint] UNIQUE NONCLUSTERED 
(
	[SemesterID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentStatus]    Script Date: 12/10/2018 11:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StudentStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentsTrainings]    Script Date: 12/10/2018 11:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsTrainings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[ECTS] [decimal](18, 2) NULL,
	[SubmissionDate] [datetime] NULL,
	[StudentID] [int] NOT NULL,
	[TeacherID] [int] NULL,
 CONSTRAINT [PK_StudentsTrainings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudyCycles]    Script Date: 12/10/2018 11:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyCycles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StudyCycles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudyGroupLanguages]    Script Date: 12/10/2018 11:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyGroupLanguages](
	[LanguageId] [int] NOT NULL,
	[StudyGroupId] [int] NOT NULL,
 CONSTRAINT [PK_StudyGroupLanguages] PRIMARY KEY CLUSTERED 
(
	[LanguageId] ASC,
	[StudyGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudyProgramme]    Script Date: 12/10/2018 11:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyProgramme](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProgrammeId] [int] NULL,
	[StudyGroupId] [int] NULL,
	[PlaceId] [int] NULL,
	[Testing] [bit] NULL,
	[Active] [bit] NULL,
	[Type] [int] NULL,
	[StLanguageId] [int] NULL,
	[Code] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_StudyProgramme] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudyProgrammeGroups]    Script Date: 12/10/2018 11:41:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyProgrammeGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacultyId] [int] NULL,
	[PlaceId] [int] NULL,
	[Name] [nvarchar](500) NULL,
	[Active] [bit] NULL,
	[CoefficientId] [int] NULL,
	[StudyType] [int] NULL,
	[StudyCycleId] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Test] [bit] NULL,
 CONSTRAINT [PK_StudyProgrammeGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StutyGroupEnrolmentTypes]    Script Date: 12/10/2018 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StutyGroupEnrolmentTypes](
	[EnrolmentStudyTypeId] [int] NOT NULL,
	[StudyProgrammeGroupId] [int] NOT NULL,
 CONSTRAINT [PK_StutyGroupEnrolmentTypes] PRIMARY KEY CLUSTERED 
(
	[EnrolmentStudyTypeId] ASC,
	[StudyProgrammeGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 12/10/2018 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[RankID] [int] NOT NULL,
	[DegreeID] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[DeactivationDate] [datetime] NULL,
	[impSifra] [nvarchar](50) NULL,
	[FacultyId] [int] NULL,
	[Surname] [nvarchar](255) NULL,
	[EMBG] [nvarchar](255) NULL,
	[Address] [nvarchar](500) NULL,
	[CommunityId] [int] NULL,
	[Profession] [nvarchar](500) NULL,
	[EmploymentDate] [datetime] NULL,
	[ProfessorFunction] [nvarchar](500) NULL,
	[ElectionDate] [datetime] NULL,
	[ElectionExpirationDate] [datetime] NULL,
	[Election] [nvarchar](500) NULL,
	[Disertation] [nvarchar](max) NULL,
	[DoctorateDate] [datetime] NULL,
	[DoctorateRankdId] [int] NULL,
	[DoctorateDegreeId] [int] NULL,
	[FullName] [nvarchar](500) NULL,
	[UserId] [uniqueidentifier] NULL,
	[Email] [nvarchar](256) NULL,
	[IsTeacher] [bit] NULL,
	[PrimaryAccount] [bit] NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeachersExamSchedules]    Script Date: 12/10/2018 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachersExamSchedules](
	[ExamSchedulesId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_TeachersExamSchedules] PRIMARY KEY CLUSTERED 
(
	[ExamSchedulesId] ASC,
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeachersInFacultyCourses]    Script Date: 12/10/2018 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachersInFacultyCourses](
	[TeacherId] [int] NOT NULL,
	[FacultyCourseId] [int] NOT NULL,
 CONSTRAINT [PK_TeachersInFacultyCourses] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC,
	[FacultyCourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeachersInMedDepartments]    Script Date: 12/10/2018 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachersInMedDepartments](
	[TeacherId] [int] NOT NULL,
	[MedDepartmentId] [int] NOT NULL,
 CONSTRAINT [PK_TeachersInMedDepartments] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC,
	[MedDepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeachersInProgrammesCourses]    Script Date: 12/10/2018 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachersInProgrammesCourses](
	[TeacherId] [int] NOT NULL,
	[ProgrammesCourseId] [int] NOT NULL,
 CONSTRAINT [PK_TeachersInProgrammesCourses] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC,
	[ProgrammesCourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeachersInProgrammesCoursesHistory]    Script Date: 12/10/2018 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachersInProgrammesCoursesHistory](
	[SemesterId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
	[ProgrammeCourseId] [int] NOT NULL,
 CONSTRAINT [PK_TeachersInProgrammesCoursesHistory] PRIMARY KEY CLUSTERED 
(
	[SemesterId] ASC,
	[TeacherId] ASC,
	[ProgrammeCourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeachersReleases]    Script Date: 12/10/2018 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachersReleases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[TeacherId] [int] NULL,
	[DateReleased] [datetime] NULL,
 CONSTRAINT [PK_TeachersReleases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Term]    Script Date: 12/10/2018 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Term](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EnrolementTermId] [int] NULL,
	[FacultyId] [int] NULL,
	[DateAppealFrom] [datetime] NULL,
	[DateAppealTo] [datetime] NULL,
	[DateRegFrom] [datetime] NULL,
	[DateRegTo] [datetime] NULL,
	[Info] [nvarchar](max) NULL,
	[LastStepContent] [nvarchar](max) NULL,
	[SupportEmails] [nvarchar](max) NULL,
	[SeccondStepStop] [bit] NULL,
	[SeccondStepStopText] [nvarchar](max) NULL,
	[NonGrad4Courses] [bit] NULL,
	[MinTotalPoints] [int] NULL,
	[MinExamPoints] [int] NULL,
 CONSTRAINT [PK_Term] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TermQuotaNationalities]    Script Date: 12/10/2018 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TermQuotaNationalities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TermId] [int] NULL,
	[NationalityId] [int] NULL,
	[Number] [int] NULL,
 CONSTRAINT [PK_TermQuotaNationalities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TermStudyCycles]    Script Date: 12/10/2018 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TermStudyCycles](
	[TermId] [int] NOT NULL,
	[StudyCycleId] [int] NOT NULL,
 CONSTRAINT [PK_TermStudyCycles] PRIMARY KEY CLUSTERED 
(
	[TermId] ASC,
	[StudyCycleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_address]    Script Date: 12/10/2018 11:41:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_company]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_date_time]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_date_time](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_decimal]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_decimal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_email]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_email](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_first_name]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_first_name](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_int]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_int](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_last_name]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_last_name](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_name]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_name](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_phone_number]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_phone_number](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_profession]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_profession](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_random]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_random](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_sex]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_sex](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_ssn]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_ssn](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_text]    Script Date: 12/10/2018 11:41:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_text](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_url]    Script Date: 12/10/2018 11:41:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_url](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_username]    Script Date: 12/10/2018 11:41:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_username](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpRandVal_year]    Script Date: 12/10/2018 11:41:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpRandVal_year](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[randcol] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TraceFINKI]    Script Date: 12/10/2018 11:41:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraceFINKI](
	[RowNumber] [int] IDENTITY(0,1) NOT NULL,
	[EventClass] [int] NULL,
	[TextData] [ntext] NULL,
	[Duration] [bigint] NULL,
	[SPID] [int] NULL,
	[DatabaseID] [int] NULL,
	[DatabaseName] [nvarchar](128) NULL,
	[ObjectType] [int] NULL,
	[LoginName] [nvarchar](128) NULL,
	[BinaryData] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[RowNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uploads]    Script Date: 12/10/2018 11:41:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uploads](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[FullPath] [varchar](500) NULL,
	[DateCreated] [datetime] NULL,
	[RoothFolder] [varchar](256) NULL,
	[FacultyId] [int] NULL,
	[Active] [bit] NULL,
	[Message] [bit] NULL,
 CONSTRAINT [PK_Uploads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserImports]    Script Date: 12/10/2018 11:41:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserImports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[Result] [nvarchar](max) NULL,
	[DateCreated] [datetime] NULL,
	[Form] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserImports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/10/2018 11:41:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersApplicationControls]    Script Date: 12/10/2018 11:41:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersApplicationControls](
	[UserId] [nvarchar](256) NOT NULL,
	[ApplicationControlId] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_UsersApplicationControls] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersInPermissions]    Script Date: 12/10/2018 11:41:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersInPermissions](
	[PermissionId] [int] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_UsersInPermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersInRoles]    Script Date: 12/10/2018 11:41:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersPermissions]    Script Date: 12/10/2018 11:41:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersPermissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PermissionName] [nvarchar](250) NULL,
	[LoweredPermissionName] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[ApplicationControlId] [int] NULL,
 CONSTRAINT [PK_UsersPermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AcademicDegrees] ADD  CONSTRAINT [DF_AcademicDegrees_Degree]  DEFAULT ('') FOR [Degree]
GO
ALTER TABLE [dbo].[AcademicRanks] ADD  CONSTRAINT [DF_NaucniTituli_Titula]  DEFAULT ('') FOR [Rank]
GO
ALTER TABLE [dbo].[ActivityLogs] ADD  CONSTRAINT [DF_ActivityLogs_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[ActivityLogs] ADD  CONSTRAINT [DF_ActivityLogs_TimeStamp]  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[Communities] ADD  CONSTRAINT [DF_Communities_Name]  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[Communities] ADD  CONSTRAINT [DF_Communities_impCode]  DEFAULT ('') FOR [impCode]
GO
ALTER TABLE [dbo].[Countries] ADD  CONSTRAINT [DF_Countries_Name]  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[Countries] ADD  CONSTRAINT [DF_Countries_Short]  DEFAULT ('') FOR [Code]
GO
ALTER TABLE [dbo].[Courses] ADD  CONSTRAINT [DF_Courses_Name]  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[Courses] ADD  CONSTRAINT [DF_Courses_Credits]  DEFAULT ((0)) FOR [Credits]
GO
ALTER TABLE [dbo].[Courses] ADD  CONSTRAINT [DF_Courses_Lessons]  DEFAULT ('') FOR [Lessons]
GO
ALTER TABLE [dbo].[Courses] ADD  CONSTRAINT [DF_Courses_Semesters]  DEFAULT ((0)) FOR [Semesters]
GO
ALTER TABLE [dbo].[Courses] ADD  CONSTRAINT [DF_Courses_impCode]  DEFAULT ('') FOR [impCode]
GO
ALTER TABLE [dbo].[Courses] ADD  CONSTRAINT [DF_Courses_impNastProg]  DEFAULT ('') FOR [impNastProg]
GO
ALTER TABLE [dbo].[DiplomaThesis] ADD  CONSTRAINT [DF_DiplomaThesis_Credits]  DEFAULT ((8)) FOR [Credits]
GO
ALTER TABLE [dbo].[DiplomaThesis] ADD  CONSTRAINT [DF_DiplomaThesis_ApplyDate]  DEFAULT (getdate()) FOR [ApplicationDate]
GO
ALTER TABLE [dbo].[DiplomaThesis] ADD  CONSTRAINT [DF_DiplomaThesis_Discarded]  DEFAULT ((0)) FOR [Discarded]
GO
ALTER TABLE [dbo].[EducationLevels] ADD  CONSTRAINT [DF_EducationScale_EducationDegree]  DEFAULT ('') FOR [EducationLevel]
GO
ALTER TABLE [dbo].[EducationLevels] ADD  CONSTRAINT [DF_EducationLevels_Code]  DEFAULT ((0)) FOR [Code]
GO
ALTER TABLE [dbo].[Emails] ADD  CONSTRAINT [DF_Emails_NumberRetries]  DEFAULT ((0)) FOR [NumberRetries]
GO
ALTER TABLE [dbo].[ExamSchedules] ADD  CONSTRAINT [DF_ExamSchedules_SessionID]  DEFAULT ((0)) FOR [SessionID]
GO
ALTER TABLE [dbo].[ExamSchedules] ADD  CONSTRAINT [DF_ExamSchedules_CourseID]  DEFAULT ((0)) FOR [CourseID]
GO
ALTER TABLE [dbo].[ExamSchedules] ADD  CONSTRAINT [DF_ExamSchedules_ExamDate]  DEFAULT ((0)) FOR [ExamDateTime]
GO
ALTER TABLE [dbo].[ExamSchedules] ADD  CONSTRAINT [DF_ExamSchedules_ExamPlaces]  DEFAULT ('') FOR [ExamPlaces]
GO
ALTER TABLE [dbo].[ExamSessions] ADD  CONSTRAINT [DF_ExamSessions_Name]  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[ExamSessions] ADD  CONSTRAINT [DF_ExamSessions_OnlyBefore2001Students]  DEFAULT ((0)) FOR [OnlyBefore2001Students]
GO
ALTER TABLE [dbo].[ExamSessions] ADD  CONSTRAINT [DF_ExamSessions_Partial]  DEFAULT ((0)) FOR [Partial]
GO
ALTER TABLE [dbo].[ExamSessions] ADD  CONSTRAINT [DF_ExamSessions_SessionType]  DEFAULT ((0)) FOR [SessionTypeID]
GO
ALTER TABLE [dbo].[ExamSessionTypes] ADD  CONSTRAINT [DF_ExamSessionTypes_SessionType]  DEFAULT ('') FOR [SessionType]
GO
ALTER TABLE [dbo].[GradeDescriptions] ADD  CONSTRAINT [DF_GradeDescriptions_Grade]  DEFAULT ((0)) FOR [Grade]
GO
ALTER TABLE [dbo].[GradeDescriptions] ADD  CONSTRAINT [DF_Table_1_Desc]  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [DF_Languages_Language]  DEFAULT ('') FOR [Language]
GO
ALTER TABLE [dbo].[MasterThesis] ADD  CONSTRAINT [DF_MasterThesis_ThesisNo]  DEFAULT ('') FOR [ThesisNo]
GO
ALTER TABLE [dbo].[MasterThesis] ADD  CONSTRAINT [DF_MasterThesis_ThesisName]  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[MasterThesis] ADD  CONSTRAINT [DF_MasterThesis_ThesisDescription]  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[MasterThesis] ADD  CONSTRAINT [DF_MasterThesis_Credits]  DEFAULT ((0)) FOR [Credits]
GO
ALTER TABLE [dbo].[MasterThesis] ADD  CONSTRAINT [DF_MasterThesis_RegistrationDate]  DEFAULT (getdate()) FOR [ApplicationDate]
GO
ALTER TABLE [dbo].[MasterThesis] ADD  CONSTRAINT [DF_MasterThesis_SubmissionDate]  DEFAULT ((0)) FOR [SubmissionDate]
GO
ALTER TABLE [dbo].[MasterThesis] ADD  CONSTRAINT [DF_MasterThesis_PresentationDate]  DEFAULT ((0)) FOR [PresentationDate]
GO
ALTER TABLE [dbo].[MasterThesis] ADD  CONSTRAINT [DF_MasterThesis_Discarded]  DEFAULT ((0)) FOR [Discarded]
GO
ALTER TABLE [dbo].[Nationalities] ADD  CONSTRAINT [DF_Nationalities_Nationality]  DEFAULT ('') FOR [Nationality]
GO
ALTER TABLE [dbo].[Places] ADD  CONSTRAINT [DF_Places_Name]  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[Places] ADD  CONSTRAINT [DF_Places_Post]  DEFAULT ('') FOR [Post]
GO
ALTER TABLE [dbo].[Places] ADD  CONSTRAINT [DF_Places_Code]  DEFAULT ('') FOR [Code]
GO
ALTER TABLE [dbo].[ProgrammesCourses] ADD  CONSTRAINT [DF_ProgrammesCourses_Semestar]  DEFAULT ((0)) FOR [Semester]
GO
ALTER TABLE [dbo].[ProgrammesCourses] ADD  CONSTRAINT [DF_ProgrammesCourses_MandatoryOptional]  DEFAULT ((1)) FOR [MandatoryOptional]
GO
ALTER TABLE [dbo].[QuotaPrices] ADD  CONSTRAINT [DF_QuotaPrices_CreditPrice]  DEFAULT ((0)) FOR [CreditPrice]
GO
ALTER TABLE [dbo].[QuotaPrices] ADD  CONSTRAINT [DF_QuotaPrices_YearPrice]  DEFAULT ((0)) FOR [YearPrice]
GO
ALTER TABLE [dbo].[Quotas] ADD  CONSTRAINT [DF_Quotas_Quota]  DEFAULT ('') FOR [QuotaName]
GO
ALTER TABLE [dbo].[Quotas] ADD  CONSTRAINT [DF_Quotas_FullTime]  DEFAULT ((1)) FOR [FullTime]
GO
ALTER TABLE [dbo].[Revisions] ADD  CONSTRAINT [DF_Revisions_RevisionName]  DEFAULT ('') FOR [RevisionName]
GO
ALTER TABLE [dbo].[Revisions] ADD  CONSTRAINT [DF_Revisions_StartYear]  DEFAULT ((0)) FOR [StartYear]
GO
ALTER TABLE [dbo].[SeminarThesis] ADD  CONSTRAINT [DF_SeminarThesis_ThesisName]  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[SeminarThesis] ADD  CONSTRAINT [DF_SeminarThesis_Description]  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[SeminarThesis] ADD  CONSTRAINT [DF_SeminarThesis_StudentID]  DEFAULT ((0)) FOR [StudentID]
GO
ALTER TABLE [dbo].[SeminarThesis] ADD  CONSTRAINT [DF_SeminarThesis_MentorID]  DEFAULT ((0)) FOR [MentorID]
GO
ALTER TABLE [dbo].[SeminarThesis] ADD  CONSTRAINT [DF_SeminarThesis_SubmissionDate]  DEFAULT (getdate()) FOR [SubmissionDate]
GO
ALTER TABLE [dbo].[SeminarThesis] ADD  CONSTRAINT [DF_SeminarThesis_Discarded]  DEFAULT ((0)) FOR [Discarded]
GO
ALTER TABLE [dbo].[SignOuts] ADD  CONSTRAINT [DF_SignOuts_DocumnetNo]  DEFAULT ('') FOR [DocumentNo]
GO
ALTER TABLE [dbo].[SignOuts] ADD  CONSTRAINT [DF_SignOuts_Date]  DEFAULT ((0)) FOR [Date]
GO
ALTER TABLE [dbo].[SignOuts] ADD  CONSTRAINT [DF_SignOuts_StudentID]  DEFAULT ((0)) FOR [StudentID]
GO
ALTER TABLE [dbo].[SignOuts] ADD  CONSTRAINT [DF_SignOuts_Description]  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[StudentApplicants] ADD  CONSTRAINT [DF__StudentAppl__Sex__253C7D7E]  DEFAULT ((1)) FOR [Sex]
GO
ALTER TABLE [dbo].[StudentApplicants] ADD  CONSTRAINT [DF__StudentAp__Appli__2630A1B7]  DEFAULT (getdate()) FOR [ApplicationDate]
GO
ALTER TABLE [dbo].[StudentApplicants] ADD  CONSTRAINT [DF__StudentAp__Study__2724C5F0]  DEFAULT ((1)) FOR [StudyStyle]
GO
ALTER TABLE [dbo].[StudentApplicants] ADD  CONSTRAINT [DF_StudentApplicants_TimeStamp]  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[StudentApplicants] ADD  CONSTRAINT [DF__StudentAp__Previ__2818EA29]  DEFAULT ((0)) FOR [PreviousEducationCredits]
GO
ALTER TABLE [dbo].[StudentApplicants] ADD  CONSTRAINT [DF__StudentAp__HighS__290D0E62]  DEFAULT ((0)) FOR [HighSchoolPoints]
GO
ALTER TABLE [dbo].[StudentApplicants] ADD  CONSTRAINT [DF__StudentAp__First__2A01329B]  DEFAULT ((0)) FOR [FirstTestingPoints]
GO
ALTER TABLE [dbo].[StudentApplicants] ADD  CONSTRAINT [DF__StudentAp__Secon__2AF556D4]  DEFAULT ((0)) FOR [SecondTestingPoints]
GO
ALTER TABLE [dbo].[StudentApplicants] ADD  CONSTRAINT [DF__StudentAp__Addit__2BE97B0D]  DEFAULT ((0)) FOR [AdditionalPoints]
GO
ALTER TABLE [dbo].[StudentPayments] ADD  CONSTRAINT [DF_StudentPayments_AmountPayed]  DEFAULT ((0)) FOR [AmountPayed]
GO
ALTER TABLE [dbo].[StudentsCourses] ADD  CONSTRAINT [DF_StudentsCourses_Signature]  DEFAULT ((0)) FOR [Signature]
GO
ALTER TABLE [dbo].[StudentsCourses] ADD  CONSTRAINT [DF_StudentsCourses_Canceled]  DEFAULT ((0)) FOR [Canceled]
GO
ALTER TABLE [dbo].[StudentStatus] ADD  CONSTRAINT [DF_StudentStatus_Status]  DEFAULT ('') FOR [Status]
GO
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[ActivitiesFormulas]  WITH NOCHECK ADD  CONSTRAINT [FK_ActivitiesFormulas_CoursesActivities] FOREIGN KEY([CourseActivitiesId])
REFERENCES [dbo].[CoursesActivities] ([Id])
GO
ALTER TABLE [dbo].[ActivitiesFormulas] CHECK CONSTRAINT [FK_ActivitiesFormulas_CoursesActivities]
GO
ALTER TABLE [dbo].[ActivityLogs]  WITH NOCHECK ADD  CONSTRAINT [FK_ActivityLogs_aspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[ActivityLogs] CHECK CONSTRAINT [FK_ActivityLogs_aspnet_Users]
GO
ALTER TABLE [dbo].[AdministrativeTaxStatus]  WITH CHECK ADD  CONSTRAINT [FK_AdministrativeTaxStatus_AdministrativeTax] FOREIGN KEY([AdministrativeTaxId])
REFERENCES [dbo].[AdministrativeTax] ([Id])
GO
ALTER TABLE [dbo].[AdministrativeTaxStatus] CHECK CONSTRAINT [FK_AdministrativeTaxStatus_AdministrativeTax]
GO
ALTER TABLE [dbo].[ApplicantAppeals]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantAppeals_Applicants] FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[Applicants] ([Id])
GO
ALTER TABLE [dbo].[ApplicantAppeals] CHECK CONSTRAINT [FK_ApplicantAppeals_Applicants]
GO
ALTER TABLE [dbo].[ApplicantProgrammes]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantProgrammes_Applicants] FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[Applicants] ([Id])
GO
ALTER TABLE [dbo].[ApplicantProgrammes] CHECK CONSTRAINT [FK_ApplicantProgrammes_Applicants]
GO
ALTER TABLE [dbo].[ApplicantProgrammes]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantProgrammes_StudyProgramme] FOREIGN KEY([StudyProgrammeId])
REFERENCES [dbo].[StudyProgramme] ([Id])
GO
ALTER TABLE [dbo].[ApplicantProgrammes] CHECK CONSTRAINT [FK_ApplicantProgrammes_StudyProgramme]
GO
ALTER TABLE [dbo].[ApplicantRang]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantRang_ApplicantQuotaTypes] FOREIGN KEY([ListType])
REFERENCES [dbo].[ApplicantQuotaTypes] ([Id])
GO
ALTER TABLE [dbo].[ApplicantRang] CHECK CONSTRAINT [FK_ApplicantRang_ApplicantQuotaTypes]
GO
ALTER TABLE [dbo].[ApplicantRang]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantRang_Applicants] FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[Applicants] ([Id])
GO
ALTER TABLE [dbo].[ApplicantRang] CHECK CONSTRAINT [FK_ApplicantRang_Applicants]
GO
ALTER TABLE [dbo].[ApplicantRang]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantRang_Nationalities] FOREIGN KEY([NationalityId])
REFERENCES [dbo].[Nationalities] ([ID])
GO
ALTER TABLE [dbo].[ApplicantRang] CHECK CONSTRAINT [FK_ApplicantRang_Nationalities]
GO
ALTER TABLE [dbo].[ApplicantRang]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantRang_Quotas] FOREIGN KEY([QuotaId])
REFERENCES [dbo].[Quotas] ([ID])
GO
ALTER TABLE [dbo].[ApplicantRang] CHECK CONSTRAINT [FK_ApplicantRang_Quotas]
GO
ALTER TABLE [dbo].[ApplicantRang]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantRang_RangLists] FOREIGN KEY([RangListId])
REFERENCES [dbo].[RangLists] ([Id])
GO
ALTER TABLE [dbo].[ApplicantRang] CHECK CONSTRAINT [FK_ApplicantRang_RangLists]
GO
ALTER TABLE [dbo].[ApplicantRang]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantRang_SpecialCases] FOREIGN KEY([SpecialCaseId])
REFERENCES [dbo].[SpecialCases] ([Id])
GO
ALTER TABLE [dbo].[ApplicantRang] CHECK CONSTRAINT [FK_ApplicantRang_SpecialCases]
GO
ALTER TABLE [dbo].[ApplicantRang]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantRang_StudyProgramme] FOREIGN KEY([StudyProgrammeId])
REFERENCES [dbo].[StudyProgramme] ([Id])
GO
ALTER TABLE [dbo].[ApplicantRang] CHECK CONSTRAINT [FK_ApplicantRang_StudyProgramme]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_ApplicantStatus] FOREIGN KEY([ApplicantStatusId])
REFERENCES [dbo].[ApplicantStatus] ([Id])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_ApplicantStatus]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_Communities] FOREIGN KEY([BirthCommunityId])
REFERENCES [dbo].[Communities] ([ID])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_Communities]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_Communities1] FOREIGN KEY([LivingCommunityId])
REFERENCES [dbo].[Communities] ([ID])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_Communities1]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_Countries] FOREIGN KEY([BirthCountryId])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_Countries]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_Countries1] FOREIGN KEY([CitizenshipId])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_Countries1]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_Countries2] FOREIGN KEY([LivingCountryId])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_Countries2]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_EnrolmentStudyTypes] FOREIGN KEY([StudyType])
REFERENCES [dbo].[EnrolmentStudyTypes] ([Id])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_EnrolmentStudyTypes]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_GraduationType] FOREIGN KEY([GraduationTypeId])
REFERENCES [dbo].[GraduationType] ([Id])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_GraduationType]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_Languages] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_Languages]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_Languages1] FOREIGN KEY([PreviousLanguageId])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_Languages1]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_Languages2] FOREIGN KEY([StudyLanguageId])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_Languages2]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_Nationalities] FOREIGN KEY([NationalityId])
REFERENCES [dbo].[Nationalities] ([ID])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_Nationalities]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_Places] FOREIGN KEY([LivingPlaceId])
REFERENCES [dbo].[Places] ([ID])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_Places]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_Places1] FOREIGN KEY([BirthPlaceId])
REFERENCES [dbo].[Places] ([ID])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_Places1]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_Schools] FOREIGN KEY([SchoolId])
REFERENCES [dbo].[Schools] ([Id])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_Schools]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_SchoolType] FOREIGN KEY([SchoolTypeId])
REFERENCES [dbo].[SchoolType] ([Id])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_SchoolType]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_SpecialCases] FOREIGN KEY([SpecialCaseId])
REFERENCES [dbo].[SpecialCases] ([Id])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_SpecialCases]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_StudyCycles] FOREIGN KEY([StudyCycleId])
REFERENCES [dbo].[StudyCycles] ([ID])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_StudyCycles]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_StudyProgramme] FOREIGN KEY([FirstStudyProgrammeId])
REFERENCES [dbo].[StudyProgramme] ([Id])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_StudyProgramme]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_StudyProgramme1] FOREIGN KEY([StudyProgrammeEnroled])
REFERENCES [dbo].[StudyProgramme] ([Id])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_StudyProgramme1]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_StudyProgrammeGroups] FOREIGN KEY([StudyGroupId])
REFERENCES [dbo].[StudyProgrammeGroups] ([Id])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_StudyProgrammeGroups]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_Term] FOREIGN KEY([TermId])
REFERENCES [dbo].[Term] ([Id])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_Term]
GO
ALTER TABLE [dbo].[ApplicationControls]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationControls_ApplicationControls] FOREIGN KEY([ParentId])
REFERENCES [dbo].[ApplicationControls] ([Id])
GO
ALTER TABLE [dbo].[ApplicationControls] CHECK CONSTRAINT [FK_ApplicationControls_ApplicationControls]
GO
ALTER TABLE [dbo].[ApplicationControls]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationControls_ApplicationDomains] FOREIGN KEY([ApplicationDomainId])
REFERENCES [dbo].[ApplicationDomains] ([Id])
GO
ALTER TABLE [dbo].[ApplicationControls] CHECK CONSTRAINT [FK_ApplicationControls_ApplicationDomains]
GO
ALTER TABLE [dbo].[ApplicationControls]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationControls_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[ApplicationControls] CHECK CONSTRAINT [FK_ApplicationControls_Faculty]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH NOCHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH NOCHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH NOCHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH NOCHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH NOCHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH NOCHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AuditLogDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_AuditLogDetails_AuditLogs] FOREIGN KEY([AuditLogId])
REFERENCES [dbo].[AuditLogsNew] ([Id])
GO
ALTER TABLE [dbo].[AuditLogDetails] CHECK CONSTRAINT [FK_AuditLogDetails_AuditLogs]
GO
ALTER TABLE [dbo].[Classrooms]  WITH NOCHECK ADD  CONSTRAINT [FK_Classrooms_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[Classrooms] CHECK CONSTRAINT [FK_Classrooms_Faculty]
GO
ALTER TABLE [dbo].[ClassSchedules]  WITH NOCHECK ADD  CONSTRAINT [FK_ClassSchedules_Classrooms] FOREIGN KEY([ClassroomID])
REFERENCES [dbo].[Classrooms] ([Id])
GO
ALTER TABLE [dbo].[ClassSchedules] CHECK CONSTRAINT [FK_ClassSchedules_Classrooms]
GO
ALTER TABLE [dbo].[ClassSchedules]  WITH NOCHECK ADD  CONSTRAINT [FK_ClassSchedules_Programmes] FOREIGN KEY([ProgrammeID])
REFERENCES [dbo].[Programmes] ([ID])
GO
ALTER TABLE [dbo].[ClassSchedules] CHECK CONSTRAINT [FK_ClassSchedules_Programmes]
GO
ALTER TABLE [dbo].[ClassSchedules]  WITH NOCHECK ADD  CONSTRAINT [FK_ClassSchedules_ProgrammesCourses] FOREIGN KEY([ProgrammeCourseID])
REFERENCES [dbo].[ProgrammesCourses] ([ID])
GO
ALTER TABLE [dbo].[ClassSchedules] CHECK CONSTRAINT [FK_ClassSchedules_ProgrammesCourses]
GO
ALTER TABLE [dbo].[ClassSchedules]  WITH NOCHECK ADD  CONSTRAINT [FK_ClassSchedules_SemestersClassSchedules] FOREIGN KEY([SemestersClassScheduleID])
REFERENCES [dbo].[SemestersClassSchedules] ([ID])
GO
ALTER TABLE [dbo].[ClassSchedules] CHECK CONSTRAINT [FK_ClassSchedules_SemestersClassSchedules]
GO
ALTER TABLE [dbo].[ClassSchedules]  WITH NOCHECK ADD  CONSTRAINT [FK_ClassSchedules_StudentGroups] FOREIGN KEY([StudentGroupID])
REFERENCES [dbo].[StudentGroups] ([Id])
GO
ALTER TABLE [dbo].[ClassSchedules] CHECK CONSTRAINT [FK_ClassSchedules_StudentGroups]
GO
ALTER TABLE [dbo].[ClassSchedules]  WITH NOCHECK ADD  CONSTRAINT [FK_ClassSchedules_Teachers] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[ClassSchedules] CHECK CONSTRAINT [FK_ClassSchedules_Teachers]
GO
ALTER TABLE [dbo].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK_Complaints_Applicants] FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[Applicants] ([Id])
GO
ALTER TABLE [dbo].[Complaints] CHECK CONSTRAINT [FK_Complaints_Applicants]
GO
ALTER TABLE [dbo].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK_Complaints_ComplaintStatus] FOREIGN KEY([ComplaintStatusId])
REFERENCES [dbo].[ComplaintStatus] ([Id])
GO
ALTER TABLE [dbo].[Complaints] CHECK CONSTRAINT [FK_Complaints_ComplaintStatus]
GO
ALTER TABLE [dbo].[Complaints]  WITH CHECK ADD  CONSTRAINT [FK_Complaints_ComplaintType] FOREIGN KEY([ComplaintTypeId])
REFERENCES [dbo].[ComplaintType] ([Id])
GO
ALTER TABLE [dbo].[Complaints] CHECK CONSTRAINT [FK_Complaints_ComplaintType]
GO
ALTER TABLE [dbo].[Courses]  WITH NOCHECK ADD  CONSTRAINT [FK_Courses_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Faculty]
GO
ALTER TABLE [dbo].[Courses]  WITH NOCHECK ADD  CONSTRAINT [FK_Courses_StudyCycles] FOREIGN KEY([StudyCycleID])
REFERENCES [dbo].[StudyCycles] ([ID])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_StudyCycles]
GO
ALTER TABLE [dbo].[CoursesActivities]  WITH CHECK ADD  CONSTRAINT [FK_CoursesActivities_Courses] FOREIGN KEY([CoursesId])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[CoursesActivities] CHECK CONSTRAINT [FK_CoursesActivities_Courses]
GO
ALTER TABLE [dbo].[CoursesDependencies]  WITH NOCHECK ADD  CONSTRAINT [FK_CoursesDependencies_Courses] FOREIGN KEY([DependenceCourseId])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[CoursesDependencies] CHECK CONSTRAINT [FK_CoursesDependencies_Courses]
GO
ALTER TABLE [dbo].[CoursesDependencies]  WITH NOCHECK ADD  CONSTRAINT [FK_CoursesDependencies_ProgrammesCourses] FOREIGN KEY([ProgrammeCourseId])
REFERENCES [dbo].[ProgrammesCourses] ([ID])
GO
ALTER TABLE [dbo].[CoursesDependencies] CHECK CONSTRAINT [FK_CoursesDependencies_ProgrammesCourses]
GO
ALTER TABLE [dbo].[CoursesInMedDepartments]  WITH CHECK ADD  CONSTRAINT [FK_CoursesInMedDepartments_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[CoursesInMedDepartments] CHECK CONSTRAINT [FK_CoursesInMedDepartments_Courses]
GO
ALTER TABLE [dbo].[CoursesInMedDepartments]  WITH CHECK ADD  CONSTRAINT [FK_CoursesInMedDepartments_MedDepartments] FOREIGN KEY([MedDepartmentId])
REFERENCES [dbo].[MedDepartments] ([Id])
GO
ALTER TABLE [dbo].[CoursesInMedDepartments] CHECK CONSTRAINT [FK_CoursesInMedDepartments_MedDepartments]
GO
ALTER TABLE [dbo].[DiplomaThesis]  WITH CHECK ADD  CONSTRAINT [FK_DiplomaThesis_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[DiplomaThesis] CHECK CONSTRAINT [FK_DiplomaThesis_Students]
GO
ALTER TABLE [dbo].[DiplomaThesis]  WITH CHECK ADD  CONSTRAINT [FK_DiplomaThesis_Teachers] FOREIGN KEY([MentorID])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[DiplomaThesis] CHECK CONSTRAINT [FK_DiplomaThesis_Teachers]
GO
ALTER TABLE [dbo].[DiplomaThesis]  WITH CHECK ADD  CONSTRAINT [FK_DiplomaThesis_Teachers1] FOREIGN KEY([Member1ID])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[DiplomaThesis] CHECK CONSTRAINT [FK_DiplomaThesis_Teachers1]
GO
ALTER TABLE [dbo].[DiplomaThesis]  WITH CHECK ADD  CONSTRAINT [FK_DiplomaThesis_Teachers2] FOREIGN KEY([Member2ID])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[DiplomaThesis] CHECK CONSTRAINT [FK_DiplomaThesis_Teachers2]
GO
ALTER TABLE [dbo].[DocumentRequests]  WITH CHECK ADD  CONSTRAINT [FK_DocumentRequests_FacultyDocuments] FOREIGN KEY([FacultyDocumentID])
REFERENCES [dbo].[FacultyDocuments] ([Id])
GO
ALTER TABLE [dbo].[DocumentRequests] CHECK CONSTRAINT [FK_DocumentRequests_FacultyDocuments]
GO
ALTER TABLE [dbo].[DocumentRequests]  WITH NOCHECK ADD  CONSTRAINT [FK_DocumentRequests_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[DocumentRequests] CHECK CONSTRAINT [FK_DocumentRequests_Students]
GO
ALTER TABLE [dbo].[EKTSGrade]  WITH NOCHECK ADD  CONSTRAINT [FK_EKTSGrade_ActivitiesFormulas] FOREIGN KEY([FormulaId])
REFERENCES [dbo].[ActivitiesFormulas] ([Id])
GO
ALTER TABLE [dbo].[EKTSGrade] CHECK CONSTRAINT [FK_EKTSGrade_ActivitiesFormulas]
GO
ALTER TABLE [dbo].[EKTSGrade]  WITH NOCHECK ADD  CONSTRAINT [FK_EKTSGrade_ExamsPassed] FOREIGN KEY([ExamPassedId])
REFERENCES [dbo].[ExamsPassed] ([ID])
GO
ALTER TABLE [dbo].[EKTSGrade] CHECK CONSTRAINT [FK_EKTSGrade_ExamsPassed]
GO
ALTER TABLE [dbo].[EntrustedSubjects]  WITH NOCHECK ADD  CONSTRAINT [FK_EntrustedSubjects_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[EntrustedSubjects] CHECK CONSTRAINT [FK_EntrustedSubjects_Teachers]
GO
ALTER TABLE [dbo].[Equivalence]  WITH CHECK ADD  CONSTRAINT [FK_Equivalence_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[Equivalence] CHECK CONSTRAINT [FK_Equivalence_Courses]
GO
ALTER TABLE [dbo].[Equivalence]  WITH CHECK ADD  CONSTRAINT [FK_Equivalence_ProgrammesCourses] FOREIGN KEY([ProgrammeCourseId])
REFERENCES [dbo].[ProgrammesCourses] ([ID])
GO
ALTER TABLE [dbo].[Equivalence] CHECK CONSTRAINT [FK_Equivalence_ProgrammesCourses]
GO
ALTER TABLE [dbo].[ExamSchedules]  WITH NOCHECK ADD  CONSTRAINT [FK_ExamSchedules_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[ExamSchedules] CHECK CONSTRAINT [FK_ExamSchedules_Courses]
GO
ALTER TABLE [dbo].[ExamSchedules]  WITH NOCHECK ADD  CONSTRAINT [FK_ExamSchedules_ExamSessions] FOREIGN KEY([SessionID])
REFERENCES [dbo].[ExamSessions] ([ID])
GO
ALTER TABLE [dbo].[ExamSchedules] CHECK CONSTRAINT [FK_ExamSchedules_ExamSessions]
GO
ALTER TABLE [dbo].[ExamSessions]  WITH NOCHECK ADD  CONSTRAINT [FK_ExamSessions_ExamSessionsMaster] FOREIGN KEY([ExamSessionMasterId])
REFERENCES [dbo].[ExamSessionsMaster] ([Id])
GO
ALTER TABLE [dbo].[ExamSessions] CHECK CONSTRAINT [FK_ExamSessions_ExamSessionsMaster]
GO
ALTER TABLE [dbo].[ExamSessions]  WITH NOCHECK ADD  CONSTRAINT [FK_ExamSessions_ExamSessionTypes] FOREIGN KEY([SessionTypeID])
REFERENCES [dbo].[ExamSessionTypes] ([ID])
GO
ALTER TABLE [dbo].[ExamSessions] CHECK CONSTRAINT [FK_ExamSessions_ExamSessionTypes]
GO
ALTER TABLE [dbo].[ExamSessions]  WITH NOCHECK ADD  CONSTRAINT [FK_ExamSessions_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[ExamSessions] CHECK CONSTRAINT [FK_ExamSessions_Faculty]
GO
ALTER TABLE [dbo].[ExamSessionsMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_ExamSessionsMaster_ExamSessionTypes] FOREIGN KEY([SessionTypeId])
REFERENCES [dbo].[ExamSessionTypes] ([ID])
GO
ALTER TABLE [dbo].[ExamSessionsMaster] CHECK CONSTRAINT [FK_ExamSessionsMaster_ExamSessionTypes]
GO
ALTER TABLE [dbo].[ExamSessionsStudyCycles]  WITH CHECK ADD  CONSTRAINT [FK_ExamSessionsStudyCycles_ExamSessions] FOREIGN KEY([ExamSessionId])
REFERENCES [dbo].[ExamSessions] ([ID])
GO
ALTER TABLE [dbo].[ExamSessionsStudyCycles] CHECK CONSTRAINT [FK_ExamSessionsStudyCycles_ExamSessions]
GO
ALTER TABLE [dbo].[ExamSessionsStudyCycles]  WITH CHECK ADD  CONSTRAINT [FK_ExamSessionsStudyCycles_StudyCycles] FOREIGN KEY([StudyCycleId])
REFERENCES [dbo].[StudyCycles] ([ID])
GO
ALTER TABLE [dbo].[ExamSessionsStudyCycles] CHECK CONSTRAINT [FK_ExamSessionsStudyCycles_StudyCycles]
GO
ALTER TABLE [dbo].[ExamsInClassrooms]  WITH NOCHECK ADD  CONSTRAINT [FK_ExamsInClassrooms_Classrooms1] FOREIGN KEY([ClassroomID])
REFERENCES [dbo].[Classrooms] ([Id])
GO
ALTER TABLE [dbo].[ExamsInClassrooms] CHECK CONSTRAINT [FK_ExamsInClassrooms_Classrooms1]
GO
ALTER TABLE [dbo].[ExamsInClassrooms]  WITH NOCHECK ADD  CONSTRAINT [FK_ExamsInClassrooms_ExamSchedules1] FOREIGN KEY([ExamScheduleID])
REFERENCES [dbo].[ExamSchedules] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamsInClassrooms] CHECK CONSTRAINT [FK_ExamsInClassrooms_ExamSchedules1]
GO
ALTER TABLE [dbo].[ExamsPassed]  WITH NOCHECK ADD  CONSTRAINT [FK_ExamsPassed_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[ExamsPassed] CHECK CONSTRAINT [FK_ExamsPassed_Courses]
GO
ALTER TABLE [dbo].[ExamsPassed]  WITH NOCHECK ADD  CONSTRAINT [FK_ExamsPassed_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[ExamsPassed] CHECK CONSTRAINT [FK_ExamsPassed_Students]
GO
ALTER TABLE [dbo].[ExamsSessionsDates]  WITH NOCHECK ADD  CONSTRAINT [FK_ExamsSessionsDates_ExamSessions] FOREIGN KEY([ExamsSessionId])
REFERENCES [dbo].[ExamSessions] ([ID])
GO
ALTER TABLE [dbo].[ExamsSessionsDates] CHECK CONSTRAINT [FK_ExamsSessionsDates_ExamSessions]
GO
ALTER TABLE [dbo].[FacultyCourses]  WITH CHECK ADD  CONSTRAINT [FK_FacultyCourses_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[FacultyCourses] CHECK CONSTRAINT [FK_FacultyCourses_Courses]
GO
ALTER TABLE [dbo].[FacultyCourses]  WITH CHECK ADD  CONSTRAINT [FK_FacultyCourses_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[FacultyCourses] CHECK CONSTRAINT [FK_FacultyCourses_Faculty]
GO
ALTER TABLE [dbo].[FacultyCourses]  WITH CHECK ADD  CONSTRAINT [FK_FacultyCourses_SemesterType] FOREIGN KEY([SemesterTypeId])
REFERENCES [dbo].[SemesterType] ([Id])
GO
ALTER TABLE [dbo].[FacultyCourses] CHECK CONSTRAINT [FK_FacultyCourses_SemesterType]
GO
ALTER TABLE [dbo].[FacultyDocuments]  WITH CHECK ADD  CONSTRAINT [FK_FacultyDocuments_Documents] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([ID])
GO
ALTER TABLE [dbo].[FacultyDocuments] CHECK CONSTRAINT [FK_FacultyDocuments_Documents]
GO
ALTER TABLE [dbo].[FacultyDocuments]  WITH CHECK ADD  CONSTRAINT [FK_FacultyDocuments_PaymentTypes] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypes] ([ID])
GO
ALTER TABLE [dbo].[FacultyDocuments] CHECK CONSTRAINT [FK_FacultyDocuments_PaymentTypes]
GO
ALTER TABLE [dbo].[GradeBookFormulas]  WITH CHECK ADD  CONSTRAINT [FK_GradeBookFormulas_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[GradeBookFormulas] CHECK CONSTRAINT [FK_GradeBookFormulas_Courses]
GO
ALTER TABLE [dbo].[GradeBookFormulas]  WITH CHECK ADD  CONSTRAINT [FK_GradeBookFormulas_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[GradeBookFormulas] CHECK CONSTRAINT [FK_GradeBookFormulas_Teachers]
GO
ALTER TABLE [dbo].[GraduationCourses]  WITH CHECK ADD  CONSTRAINT [FK_GraduationCourses_Applicants] FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[Applicants] ([Id])
GO
ALTER TABLE [dbo].[GraduationCourses] CHECK CONSTRAINT [FK_GraduationCourses_Applicants]
GO
ALTER TABLE [dbo].[GraduationCourses]  WITH CHECK ADD  CONSTRAINT [FK_GraduationCourses_SchoolCourses] FOREIGN KEY([SchoolCourseId])
REFERENCES [dbo].[SchoolCourses] ([Id])
GO
ALTER TABLE [dbo].[GraduationCourses] CHECK CONSTRAINT [FK_GraduationCourses_SchoolCourses]
GO
ALTER TABLE [dbo].[GroupCourses]  WITH CHECK ADD  CONSTRAINT [FK_GroupCourses_SchoolCourses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[SchoolCourses] ([Id])
GO
ALTER TABLE [dbo].[GroupCourses] CHECK CONSTRAINT [FK_GroupCourses_SchoolCourses]
GO
ALTER TABLE [dbo].[GroupCourses]  WITH CHECK ADD  CONSTRAINT [FK_GroupCourses_SchoolType] FOREIGN KEY([SchoolTypeId])
REFERENCES [dbo].[SchoolType] ([Id])
GO
ALTER TABLE [dbo].[GroupCourses] CHECK CONSTRAINT [FK_GroupCourses_SchoolType]
GO
ALTER TABLE [dbo].[GroupCourses]  WITH CHECK ADD  CONSTRAINT [FK_GroupCourses_StudyProgrammeGroups] FOREIGN KEY([StudyGroupId])
REFERENCES [dbo].[StudyProgrammeGroups] ([Id])
GO
ALTER TABLE [dbo].[GroupCourses] CHECK CONSTRAINT [FK_GroupCourses_StudyProgrammeGroups]
GO
ALTER TABLE [dbo].[HrUsers]  WITH CHECK ADD  CONSTRAINT [FK_HrUsers_AcademicDegrees] FOREIGN KEY([AcademicDegreeId])
REFERENCES [dbo].[AcademicDegrees] ([ID])
GO
ALTER TABLE [dbo].[HrUsers] CHECK CONSTRAINT [FK_HrUsers_AcademicDegrees]
GO
ALTER TABLE [dbo].[HrUsers]  WITH CHECK ADD  CONSTRAINT [FK_HrUsers_AcademicRanks] FOREIGN KEY([AcademicRankId])
REFERENCES [dbo].[AcademicRanks] ([ID])
GO
ALTER TABLE [dbo].[HrUsers] CHECK CONSTRAINT [FK_HrUsers_AcademicRanks]
GO
ALTER TABLE [dbo].[HrUsers]  WITH CHECK ADD  CONSTRAINT [FK_HrUsers_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[HrUsers] CHECK CONSTRAINT [FK_HrUsers_Faculty]
GO
ALTER TABLE [dbo].[HrUsers]  WITH CHECK ADD  CONSTRAINT [FK_HrUsers_HrInstitutes] FOREIGN KEY([HrInstituteId])
REFERENCES [dbo].[HrInstitutes] ([Id])
GO
ALTER TABLE [dbo].[HrUsers] CHECK CONSTRAINT [FK_HrUsers_HrInstitutes]
GO
ALTER TABLE [dbo].[HrUsers]  WITH CHECK ADD  CONSTRAINT [FK_HrUsers_HrRoles] FOREIGN KEY([HrRoleId])
REFERENCES [dbo].[HrRoles] ([Id])
GO
ALTER TABLE [dbo].[HrUsers] CHECK CONSTRAINT [FK_HrUsers_HrRoles]
GO
ALTER TABLE [dbo].[LocalDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LocalDocuments_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[LocalDocuments] CHECK CONSTRAINT [FK_LocalDocuments_Faculty]
GO
ALTER TABLE [dbo].[LocalDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LocalDocuments_GlobalDocuments] FOREIGN KEY([GlobalDocumentId])
REFERENCES [dbo].[GlobalDocuments] ([Id])
GO
ALTER TABLE [dbo].[LocalDocuments] CHECK CONSTRAINT [FK_LocalDocuments_GlobalDocuments]
GO
ALTER TABLE [dbo].[MainMenu]  WITH NOCHECK ADD  CONSTRAINT [FK_MainMenu_MainMenu] FOREIGN KEY([ParentId])
REFERENCES [dbo].[MainMenu] ([Id])
GO
ALTER TABLE [dbo].[MainMenu] CHECK CONSTRAINT [FK_MainMenu_MainMenu]
GO
ALTER TABLE [dbo].[MainMenuLocale]  WITH NOCHECK ADD  CONSTRAINT [FK_MainMenuLocale_MainMenu] FOREIGN KEY([MainMenuId])
REFERENCES [dbo].[MainMenu] ([Id])
GO
ALTER TABLE [dbo].[MainMenuLocale] CHECK CONSTRAINT [FK_MainMenuLocale_MainMenu]
GO
ALTER TABLE [dbo].[MasterThesis]  WITH NOCHECK ADD  CONSTRAINT [FK_MasterThesis_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[MasterThesis] CHECK CONSTRAINT [FK_MasterThesis_Students]
GO
ALTER TABLE [dbo].[MasterThesis]  WITH NOCHECK ADD  CONSTRAINT [FK_MasterThesis_Teachers] FOREIGN KEY([MentorID])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[MasterThesis] CHECK CONSTRAINT [FK_MasterThesis_Teachers]
GO
ALTER TABLE [dbo].[MasterThesis]  WITH NOCHECK ADD  CONSTRAINT [FK_MasterThesis_Teachers1] FOREIGN KEY([CommisionPresidentID])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[MasterThesis] CHECK CONSTRAINT [FK_MasterThesis_Teachers1]
GO
ALTER TABLE [dbo].[MasterThesis]  WITH NOCHECK ADD  CONSTRAINT [FK_MasterThesis_Teachers2] FOREIGN KEY([Member3ID])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[MasterThesis] CHECK CONSTRAINT [FK_MasterThesis_Teachers2]
GO
ALTER TABLE [dbo].[Memberships]  WITH CHECK ADD  CONSTRAINT [MembershipApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[Memberships] CHECK CONSTRAINT [MembershipApplication]
GO
ALTER TABLE [dbo].[Memberships]  WITH CHECK ADD  CONSTRAINT [MembershipUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Memberships] CHECK CONSTRAINT [MembershipUser]
GO
ALTER TABLE [dbo].[MoodleSync]  WITH CHECK ADD  CONSTRAINT [FK_MoodleSync_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[MoodleSync] CHECK CONSTRAINT [FK_MoodleSync_Courses]
GO
ALTER TABLE [dbo].[MoodleSync]  WITH CHECK ADD  CONSTRAINT [FK_MoodleSync_Semesters] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semesters] ([ID])
GO
ALTER TABLE [dbo].[MoodleSync] CHECK CONSTRAINT [FK_MoodleSync_Semesters]
GO
ALTER TABLE [dbo].[PaymentTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_PaymentTypes_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[PaymentTypes] CHECK CONSTRAINT [FK_PaymentTypes_Faculty]
GO
ALTER TABLE [dbo].[PenaltiesCourses]  WITH CHECK ADD  CONSTRAINT [FK_PenaltiesCourses_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[PenaltiesCourses] CHECK CONSTRAINT [FK_PenaltiesCourses_Courses]
GO
ALTER TABLE [dbo].[PenaltiesCourses]  WITH CHECK ADD  CONSTRAINT [FK_PenaltiesCourses_StudentPenalties] FOREIGN KEY([StudentPenaltiesId])
REFERENCES [dbo].[StudentPenalties] ([Id])
GO
ALTER TABLE [dbo].[PenaltiesCourses] CHECK CONSTRAINT [FK_PenaltiesCourses_StudentPenalties]
GO
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [UserProfile]
GO
ALTER TABLE [dbo].[ProgrammeModules]  WITH NOCHECK ADD  CONSTRAINT [FK_ProgrammeModules_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[ProgrammeModules] CHECK CONSTRAINT [FK_ProgrammeModules_Faculty]
GO
ALTER TABLE [dbo].[Programmes]  WITH NOCHECK ADD  CONSTRAINT [FK_Programmes_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[Programmes] CHECK CONSTRAINT [FK_Programmes_Faculty]
GO
ALTER TABLE [dbo].[Programmes]  WITH CHECK ADD  CONSTRAINT [FK_Programmes_Languages] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[Programmes] CHECK CONSTRAINT [FK_Programmes_Languages]
GO
ALTER TABLE [dbo].[Programmes]  WITH CHECK ADD  CONSTRAINT [FK_Programmes_Places] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Places] ([ID])
GO
ALTER TABLE [dbo].[Programmes] CHECK CONSTRAINT [FK_Programmes_Places]
GO
ALTER TABLE [dbo].[Programmes]  WITH NOCHECK ADD  CONSTRAINT [FK_Programmes_Revisions] FOREIGN KEY([RevisionID])
REFERENCES [dbo].[Revisions] ([ID])
GO
ALTER TABLE [dbo].[Programmes] CHECK CONSTRAINT [FK_Programmes_Revisions]
GO
ALTER TABLE [dbo].[Programmes]  WITH NOCHECK ADD  CONSTRAINT [FK_Programmes_StudyCycles] FOREIGN KEY([StudyCycleID])
REFERENCES [dbo].[StudyCycles] ([ID])
GO
ALTER TABLE [dbo].[Programmes] CHECK CONSTRAINT [FK_Programmes_StudyCycles]
GO
ALTER TABLE [dbo].[ProgrammesCourses]  WITH NOCHECK ADD  CONSTRAINT [FK_ProgrammesCourses_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[ProgrammesCourses] CHECK CONSTRAINT [FK_ProgrammesCourses_Courses]
GO
ALTER TABLE [dbo].[ProgrammesCourses]  WITH NOCHECK ADD  CONSTRAINT [FK_ProgrammesCourses_Programmes] FOREIGN KEY([ProgrammeID])
REFERENCES [dbo].[Programmes] ([ID])
GO
ALTER TABLE [dbo].[ProgrammesCourses] CHECK CONSTRAINT [FK_ProgrammesCourses_Programmes]
GO
ALTER TABLE [dbo].[ProgrammesCourses]  WITH NOCHECK ADD  CONSTRAINT [FK_ProgrammesCourses_SemesterType1] FOREIGN KEY([SemesterTypeId])
REFERENCES [dbo].[SemesterType] ([Id])
GO
ALTER TABLE [dbo].[ProgrammesCourses] CHECK CONSTRAINT [FK_ProgrammesCourses_SemesterType1]
GO
ALTER TABLE [dbo].[ProgrammesGroups]  WITH CHECK ADD  CONSTRAINT [FK_ProgrammesGroups_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[ProgrammesGroups] CHECK CONSTRAINT [FK_ProgrammesGroups_Faculty]
GO
ALTER TABLE [dbo].[ProgrammesGroupsProgrammes]  WITH CHECK ADD  CONSTRAINT [FK_ProgrammesGroupsProgrammes_Programmes] FOREIGN KEY([ProgrammeId])
REFERENCES [dbo].[Programmes] ([ID])
GO
ALTER TABLE [dbo].[ProgrammesGroupsProgrammes] CHECK CONSTRAINT [FK_ProgrammesGroupsProgrammes_Programmes]
GO
ALTER TABLE [dbo].[ProgrammesGroupsProgrammes]  WITH CHECK ADD  CONSTRAINT [FK_ProgrammesGroupsProgrammes_ProgrammesGroups] FOREIGN KEY([ProgrammesGroupId])
REFERENCES [dbo].[ProgrammesGroups] ([ID])
GO
ALTER TABLE [dbo].[ProgrammesGroupsProgrammes] CHECK CONSTRAINT [FK_ProgrammesGroupsProgrammes_ProgrammesGroups]
GO
ALTER TABLE [dbo].[QuotaNationalities]  WITH CHECK ADD  CONSTRAINT [FK_QuotaNationalities_Nationalities] FOREIGN KEY([NationalityId])
REFERENCES [dbo].[Nationalities] ([ID])
GO
ALTER TABLE [dbo].[QuotaNationalities] CHECK CONSTRAINT [FK_QuotaNationalities_Nationalities]
GO
ALTER TABLE [dbo].[QuotaNationalities]  WITH CHECK ADD  CONSTRAINT [FK_QuotaNationalities_StudyProgramme] FOREIGN KEY([StudyProgrammeId])
REFERENCES [dbo].[StudyProgramme] ([Id])
GO
ALTER TABLE [dbo].[QuotaNationalities] CHECK CONSTRAINT [FK_QuotaNationalities_StudyProgramme]
GO
ALTER TABLE [dbo].[QuotaPrices]  WITH NOCHECK ADD  CONSTRAINT [FK_QuotaPrices_Programmes] FOREIGN KEY([ProgrammeID])
REFERENCES [dbo].[Programmes] ([ID])
GO
ALTER TABLE [dbo].[QuotaPrices] CHECK CONSTRAINT [FK_QuotaPrices_Programmes]
GO
ALTER TABLE [dbo].[QuotaPrices]  WITH NOCHECK ADD  CONSTRAINT [FK_QuotaPrices_Quotas] FOREIGN KEY([QuotaID])
REFERENCES [dbo].[Quotas] ([ID])
GO
ALTER TABLE [dbo].[QuotaPrices] CHECK CONSTRAINT [FK_QuotaPrices_Quotas]
GO
ALTER TABLE [dbo].[QuotaRegular]  WITH CHECK ADD  CONSTRAINT [FK_QuotaRegular_Quotas] FOREIGN KEY([QuotaId])
REFERENCES [dbo].[Quotas] ([ID])
GO
ALTER TABLE [dbo].[QuotaRegular] CHECK CONSTRAINT [FK_QuotaRegular_Quotas]
GO
ALTER TABLE [dbo].[QuotaRegular]  WITH CHECK ADD  CONSTRAINT [FK_QuotaRegular_StudyProgramme] FOREIGN KEY([StudyProgrammeId])
REFERENCES [dbo].[StudyProgramme] ([Id])
GO
ALTER TABLE [dbo].[QuotaRegular] CHECK CONSTRAINT [FK_QuotaRegular_StudyProgramme]
GO
ALTER TABLE [dbo].[QuotaRegular]  WITH CHECK ADD  CONSTRAINT [FK_QuotaRegular_Term] FOREIGN KEY([TermId])
REFERENCES [dbo].[Term] ([Id])
GO
ALTER TABLE [dbo].[QuotaRegular] CHECK CONSTRAINT [FK_QuotaRegular_Term]
GO
ALTER TABLE [dbo].[RangListPublish]  WITH CHECK ADD  CONSTRAINT [FK_RangListPublish_RangLists] FOREIGN KEY([RangListId])
REFERENCES [dbo].[RangLists] ([Id])
GO
ALTER TABLE [dbo].[RangListPublish] CHECK CONSTRAINT [FK_RangListPublish_RangLists]
GO
ALTER TABLE [dbo].[RangLists]  WITH CHECK ADD  CONSTRAINT [FK_RangLists_StudyCycles] FOREIGN KEY([StudyCycleId])
REFERENCES [dbo].[StudyCycles] ([ID])
GO
ALTER TABLE [dbo].[RangLists] CHECK CONSTRAINT [FK_RangLists_StudyCycles]
GO
ALTER TABLE [dbo].[RangLists]  WITH CHECK ADD  CONSTRAINT [FK_RangLists_Term] FOREIGN KEY([TermId])
REFERENCES [dbo].[Term] ([Id])
GO
ALTER TABLE [dbo].[RangLists] CHECK CONSTRAINT [FK_RangLists_Term]
GO
ALTER TABLE [dbo].[Revisions]  WITH NOCHECK ADD  CONSTRAINT [FK_Revisions_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_Faculty]
GO
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [RoleApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [RoleApplication]
GO
ALTER TABLE [dbo].[RolesApplicationControls]  WITH NOCHECK ADD  CONSTRAINT [FK_RolesApplicationControls_ApplicationControls] FOREIGN KEY([ApplicationControlId])
REFERENCES [dbo].[ApplicationControls] ([Id])
GO
ALTER TABLE [dbo].[RolesApplicationControls] CHECK CONSTRAINT [FK_RolesApplicationControls_ApplicationControls]
GO
ALTER TABLE [dbo].[Schools]  WITH CHECK ADD  CONSTRAINT [FK_Schools_Communities] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Communities] ([ID])
GO
ALTER TABLE [dbo].[Schools] CHECK CONSTRAINT [FK_Schools_Communities]
GO
ALTER TABLE [dbo].[SemesterDates]  WITH NOCHECK ADD  CONSTRAINT [FK_SemesterDates_Semesters] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semesters] ([ID])
GO
ALTER TABLE [dbo].[SemesterDates] CHECK CONSTRAINT [FK_SemesterDates_Semesters]
GO
ALTER TABLE [dbo].[Semesters]  WITH NOCHECK ADD  CONSTRAINT [FK_Semesters_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[Semesters] CHECK CONSTRAINT [FK_Semesters_Faculty]
GO
ALTER TABLE [dbo].[Semesters]  WITH NOCHECK ADD  CONSTRAINT [FK_Semesters_SemesterType1] FOREIGN KEY([SemesterTypeId])
REFERENCES [dbo].[SemesterType] ([Id])
GO
ALTER TABLE [dbo].[Semesters] CHECK CONSTRAINT [FK_Semesters_SemesterType1]
GO
ALTER TABLE [dbo].[SemestersClassSchedules]  WITH NOCHECK ADD  CONSTRAINT [FK_SemestersClassSchedules_Faculty] FOREIGN KEY([FacultyID])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[SemestersClassSchedules] CHECK CONSTRAINT [FK_SemestersClassSchedules_Faculty]
GO
ALTER TABLE [dbo].[SemestersClassSchedules]  WITH NOCHECK ADD  CONSTRAINT [FK_SemestersClassSchedules_Semesters] FOREIGN KEY([SemesterID])
REFERENCES [dbo].[Semesters] ([ID])
GO
ALTER TABLE [dbo].[SemestersClassSchedules] CHECK CONSTRAINT [FK_SemestersClassSchedules_Semesters]
GO
ALTER TABLE [dbo].[SemestersPayments]  WITH NOCHECK ADD  CONSTRAINT [FK_SemestersPayments_StudentPayments] FOREIGN KEY([StudentPaymentID])
REFERENCES [dbo].[StudentPayments] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SemestersPayments] CHECK CONSTRAINT [FK_SemestersPayments_StudentPayments]
GO
ALTER TABLE [dbo].[SemesterStudyCycles]  WITH CHECK ADD  CONSTRAINT [FK_SemesterStudyCycles_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[SemesterStudyCycles] CHECK CONSTRAINT [FK_SemesterStudyCycles_Faculty]
GO
ALTER TABLE [dbo].[SemesterStudyCycles]  WITH CHECK ADD  CONSTRAINT [FK_SemesterStudyCycles_Semesters] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semesters] ([ID])
GO
ALTER TABLE [dbo].[SemesterStudyCycles] CHECK CONSTRAINT [FK_SemesterStudyCycles_Semesters]
GO
ALTER TABLE [dbo].[SemesterStudyCycles]  WITH CHECK ADD  CONSTRAINT [FK_SemesterStudyCycles_StudyCycles] FOREIGN KEY([StudyCycleId])
REFERENCES [dbo].[StudyCycles] ([ID])
GO
ALTER TABLE [dbo].[SemesterStudyCycles] CHECK CONSTRAINT [FK_SemesterStudyCycles_StudyCycles]
GO
ALTER TABLE [dbo].[SeminarThesis]  WITH NOCHECK ADD  CONSTRAINT [FK_SeminarThesis_Courses] FOREIGN KEY([StudentCourseID])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[SeminarThesis] CHECK CONSTRAINT [FK_SeminarThesis_Courses]
GO
ALTER TABLE [dbo].[SeminarThesis]  WITH NOCHECK ADD  CONSTRAINT [FK_SeminarThesis_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[SeminarThesis] CHECK CONSTRAINT [FK_SeminarThesis_Students]
GO
ALTER TABLE [dbo].[SeminarThesis]  WITH NOCHECK ADD  CONSTRAINT [FK_SeminarThesis_Teachers] FOREIGN KEY([MentorID])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[SeminarThesis] CHECK CONSTRAINT [FK_SeminarThesis_Teachers]
GO
ALTER TABLE [dbo].[SignOuts]  WITH NOCHECK ADD  CONSTRAINT [FK_SignOuts_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[SignOuts] CHECK CONSTRAINT [FK_SignOuts_Students]
GO
ALTER TABLE [dbo].[StudentApplicants]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentApplicants_Communities] FOREIGN KEY([BirthCommunityID])
REFERENCES [dbo].[Communities] ([ID])
GO
ALTER TABLE [dbo].[StudentApplicants] CHECK CONSTRAINT [FK_StudentApplicants_Communities]
GO
ALTER TABLE [dbo].[StudentApplicants]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentApplicants_Countries] FOREIGN KEY([BirthCountryID])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[StudentApplicants] CHECK CONSTRAINT [FK_StudentApplicants_Countries]
GO
ALTER TABLE [dbo].[StudentApplicants]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentApplicants_Countries1] FOREIGN KEY([LivingCountryID])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[StudentApplicants] CHECK CONSTRAINT [FK_StudentApplicants_Countries1]
GO
ALTER TABLE [dbo].[StudentApplicants]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentApplicants_Education] FOREIGN KEY([EducationID])
REFERENCES [dbo].[EducationTypes] ([ID])
GO
ALTER TABLE [dbo].[StudentApplicants] CHECK CONSTRAINT [FK_StudentApplicants_Education]
GO
ALTER TABLE [dbo].[StudentApplicants]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentApplicants_EducationLevels] FOREIGN KEY([EducationFather])
REFERENCES [dbo].[EducationLevels] ([ID])
GO
ALTER TABLE [dbo].[StudentApplicants] CHECK CONSTRAINT [FK_StudentApplicants_EducationLevels]
GO
ALTER TABLE [dbo].[StudentApplicants]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentApplicants_EducationLevels1] FOREIGN KEY([EducationMother])
REFERENCES [dbo].[EducationLevels] ([ID])
GO
ALTER TABLE [dbo].[StudentApplicants] CHECK CONSTRAINT [FK_StudentApplicants_EducationLevels1]
GO
ALTER TABLE [dbo].[StudentApplicants]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentApplicants_Nationalities] FOREIGN KEY([NationalityID])
REFERENCES [dbo].[Nationalities] ([ID])
GO
ALTER TABLE [dbo].[StudentApplicants] CHECK CONSTRAINT [FK_StudentApplicants_Nationalities]
GO
ALTER TABLE [dbo].[StudentApplicants]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentApplicants_Places] FOREIGN KEY([BirthPlaceID])
REFERENCES [dbo].[Places] ([ID])
GO
ALTER TABLE [dbo].[StudentApplicants] CHECK CONSTRAINT [FK_StudentApplicants_Places]
GO
ALTER TABLE [dbo].[StudentApplicants]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentApplicants_Places1] FOREIGN KEY([LivingPlaceID])
REFERENCES [dbo].[Places] ([ID])
GO
ALTER TABLE [dbo].[StudentApplicants] CHECK CONSTRAINT [FK_StudentApplicants_Places1]
GO
ALTER TABLE [dbo].[StudentGroups]  WITH CHECK ADD  CONSTRAINT [FK_StudentGroups_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[StudentGroups] CHECK CONSTRAINT [FK_StudentGroups_Courses]
GO
ALTER TABLE [dbo].[StudentGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentGroups_Semesters] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semesters] ([ID])
GO
ALTER TABLE [dbo].[StudentGroups] CHECK CONSTRAINT [FK_StudentGroups_Semesters]
GO
ALTER TABLE [dbo].[StudentGroups]  WITH CHECK ADD  CONSTRAINT [FK_StudentGroups_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[StudentGroups] CHECK CONSTRAINT [FK_StudentGroups_Teachers]
GO
ALTER TABLE [dbo].[StudentPayments]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentPayments_PaymentTypes] FOREIGN KEY([PaymentTypeID])
REFERENCES [dbo].[PaymentTypes] ([ID])
GO
ALTER TABLE [dbo].[StudentPayments] CHECK CONSTRAINT [FK_StudentPayments_PaymentTypes]
GO
ALTER TABLE [dbo].[StudentPayments]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentPayments_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[StudentPayments] CHECK CONSTRAINT [FK_StudentPayments_Students]
GO
ALTER TABLE [dbo].[StudentPenalties]  WITH CHECK ADD  CONSTRAINT [FK_StudentPenalties_Students] FOREIGN KEY([StudentsId])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[StudentPenalties] CHECK CONSTRAINT [FK_StudentPenalties_Students]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Communities2] FOREIGN KEY([BirthCommunityID])
REFERENCES [dbo].[Communities] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Communities2]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Communities3] FOREIGN KEY([LivingCommunityID])
REFERENCES [dbo].[Communities] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Communities3]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Countries] FOREIGN KEY([CitizenshipID])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Countries]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Countries1] FOREIGN KEY([BirthCountryID])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Countries1]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Countries2] FOREIGN KEY([LivingCountryID])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Countries2]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Countries3] FOREIGN KEY([PreviousEducationCountryID])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Countries3]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_EducationLevels] FOREIGN KEY([FatherEducation])
REFERENCES [dbo].[EducationLevels] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_EducationLevels]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_EducationLevels1] FOREIGN KEY([MotherEducation])
REFERENCES [dbo].[EducationLevels] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_EducationLevels1]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Faculty]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Languages] FOREIGN KEY([PreviousEducationLanguageID])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Languages]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Nationalities] FOREIGN KEY([NationalityID])
REFERENCES [dbo].[Nationalities] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Nationalities]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Places] FOREIGN KEY([BirthPlaceID])
REFERENCES [dbo].[Places] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Places]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Places2] FOREIGN KEY([LivingPlaceID])
REFERENCES [dbo].[Places] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Places2]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Programmes] FOREIGN KEY([StartProgrammeID])
REFERENCES [dbo].[Programmes] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Programmes]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Programmes1] FOREIGN KEY([LastProgrammeId])
REFERENCES [dbo].[Programmes] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Programmes1]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_QuotaPrices] FOREIGN KEY([StartQuotaPriceID])
REFERENCES [dbo].[QuotaPrices] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_QuotaPrices]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_QuotaPrices1] FOREIGN KEY([LastQuotaPriceId])
REFERENCES [dbo].[QuotaPrices] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_QuotaPrices1]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_Revisions] FOREIGN KEY([CurrentRevisionID])
REFERENCES [dbo].[Revisions] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Revisions]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_SchoolType] FOREIGN KEY([SchoolTypeId])
REFERENCES [dbo].[SchoolType] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_SchoolType]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_StudentStatus] FOREIGN KEY([StudentStatusID])
REFERENCES [dbo].[StudentStatus] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_StudentStatus]
GO
ALTER TABLE [dbo].[Students]  WITH NOCHECK ADD  CONSTRAINT [FK_Students_StudyCycles] FOREIGN KEY([StudyCycleID])
REFERENCES [dbo].[StudyCycles] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_StudyCycles]
GO
ALTER TABLE [dbo].[StudentsActivitiesResults]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentsActivitiesResults_CoursesActivities] FOREIGN KEY([CoursesActivitiesId])
REFERENCES [dbo].[CoursesActivities] ([Id])
GO
ALTER TABLE [dbo].[StudentsActivitiesResults] CHECK CONSTRAINT [FK_StudentsActivitiesResults_CoursesActivities]
GO
ALTER TABLE [dbo].[StudentsActivitiesResults]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentsActivitiesResults_Students] FOREIGN KEY([StudentsId])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[StudentsActivitiesResults] CHECK CONSTRAINT [FK_StudentsActivitiesResults_Students]
GO
ALTER TABLE [dbo].[StudentsCourses]  WITH CHECK ADD  CONSTRAINT [FK_StudentsCourses_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[StudentsCourses] CHECK CONSTRAINT [FK_StudentsCourses_Courses]
GO
ALTER TABLE [dbo].[StudentsCourses]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentsCourses_SignatureTypes] FOREIGN KEY([SignatureTypeId])
REFERENCES [dbo].[SignatureTypes] ([ID])
GO
ALTER TABLE [dbo].[StudentsCourses] CHECK CONSTRAINT [FK_StudentsCourses_SignatureTypes]
GO
ALTER TABLE [dbo].[StudentsCourses]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentsCourses_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[StudentsCourses] CHECK CONSTRAINT [FK_StudentsCourses_Teachers]
GO
ALTER TABLE [dbo].[StudentsInGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentsInGroups_StudentGroups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[StudentGroups] ([Id])
GO
ALTER TABLE [dbo].[StudentsInGroups] CHECK CONSTRAINT [FK_StudentsInGroups_StudentGroups]
GO
ALTER TABLE [dbo].[StudentsInGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentsInGroups_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[StudentsInGroups] CHECK CONSTRAINT [FK_StudentsInGroups_Students]
GO
ALTER TABLE [dbo].[StudentsOLD]  WITH CHECK ADD  CONSTRAINT [FK_StudentsOLD_Countries] FOREIGN KEY([CitizenshipId])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[StudentsOLD] CHECK CONSTRAINT [FK_StudentsOLD_Countries]
GO
ALTER TABLE [dbo].[StudentsOLD]  WITH CHECK ADD  CONSTRAINT [FK_StudentsOLD_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[StudentsOLD] CHECK CONSTRAINT [FK_StudentsOLD_Faculty]
GO
ALTER TABLE [dbo].[StudentsOLD]  WITH CHECK ADD  CONSTRAINT [FK_StudentsOLD_Nationalities] FOREIGN KEY([NationalityId])
REFERENCES [dbo].[Nationalities] ([ID])
GO
ALTER TABLE [dbo].[StudentsOLD] CHECK CONSTRAINT [FK_StudentsOLD_Nationalities]
GO
ALTER TABLE [dbo].[StudentsOLD]  WITH CHECK ADD  CONSTRAINT [FK_StudentsOLD_Places] FOREIGN KEY([BirthPlaceId])
REFERENCES [dbo].[Places] ([ID])
GO
ALTER TABLE [dbo].[StudentsOLD] CHECK CONSTRAINT [FK_StudentsOLD_Places]
GO
ALTER TABLE [dbo].[StudentsOLD]  WITH CHECK ADD  CONSTRAINT [FK_StudentsOLD_StudyCycles] FOREIGN KEY([StudyCycleId])
REFERENCES [dbo].[StudyCycles] ([ID])
GO
ALTER TABLE [dbo].[StudentsOLD] CHECK CONSTRAINT [FK_StudentsOLD_StudyCycles]
GO
ALTER TABLE [dbo].[StudentsTrainings]  WITH CHECK ADD  CONSTRAINT [FK_StudentsTrainings_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([ID])
GO
ALTER TABLE [dbo].[StudentsTrainings] CHECK CONSTRAINT [FK_StudentsTrainings_Students]
GO
ALTER TABLE [dbo].[StudentsTrainings]  WITH CHECK ADD  CONSTRAINT [FK_StudentsTrainings_Teachers] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[StudentsTrainings] CHECK CONSTRAINT [FK_StudentsTrainings_Teachers]
GO
ALTER TABLE [dbo].[StudyGroupLanguages]  WITH CHECK ADD  CONSTRAINT [FK_StudyGroupLanguages_Languages] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[StudyGroupLanguages] CHECK CONSTRAINT [FK_StudyGroupLanguages_Languages]
GO
ALTER TABLE [dbo].[StudyGroupLanguages]  WITH CHECK ADD  CONSTRAINT [FK_StudyGroupLanguages_StudyProgrammeGroups] FOREIGN KEY([StudyGroupId])
REFERENCES [dbo].[StudyProgrammeGroups] ([Id])
GO
ALTER TABLE [dbo].[StudyGroupLanguages] CHECK CONSTRAINT [FK_StudyGroupLanguages_StudyProgrammeGroups]
GO
ALTER TABLE [dbo].[StudyProgramme]  WITH CHECK ADD  CONSTRAINT [FK_StudyProgramme_Languages] FOREIGN KEY([StLanguageId])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[StudyProgramme] CHECK CONSTRAINT [FK_StudyProgramme_Languages]
GO
ALTER TABLE [dbo].[StudyProgramme]  WITH CHECK ADD  CONSTRAINT [FK_StudyProgramme_Places] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Places] ([ID])
GO
ALTER TABLE [dbo].[StudyProgramme] CHECK CONSTRAINT [FK_StudyProgramme_Places]
GO
ALTER TABLE [dbo].[StudyProgramme]  WITH CHECK ADD  CONSTRAINT [FK_StudyProgramme_Programmes] FOREIGN KEY([ProgrammeId])
REFERENCES [dbo].[Programmes] ([ID])
GO
ALTER TABLE [dbo].[StudyProgramme] CHECK CONSTRAINT [FK_StudyProgramme_Programmes]
GO
ALTER TABLE [dbo].[StudyProgramme]  WITH CHECK ADD  CONSTRAINT [FK_StudyProgramme_StudyProgrammeGroups] FOREIGN KEY([StudyGroupId])
REFERENCES [dbo].[StudyProgrammeGroups] ([Id])
GO
ALTER TABLE [dbo].[StudyProgramme] CHECK CONSTRAINT [FK_StudyProgramme_StudyProgrammeGroups]
GO
ALTER TABLE [dbo].[StudyProgrammeGroups]  WITH CHECK ADD  CONSTRAINT [FK_StudyProgrammeGroups_Coefficients] FOREIGN KEY([CoefficientId])
REFERENCES [dbo].[Coefficients] ([Id])
GO
ALTER TABLE [dbo].[StudyProgrammeGroups] CHECK CONSTRAINT [FK_StudyProgrammeGroups_Coefficients]
GO
ALTER TABLE [dbo].[StudyProgrammeGroups]  WITH CHECK ADD  CONSTRAINT [FK_StudyProgrammeGroups_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[StudyProgrammeGroups] CHECK CONSTRAINT [FK_StudyProgrammeGroups_Faculty]
GO
ALTER TABLE [dbo].[StudyProgrammeGroups]  WITH CHECK ADD  CONSTRAINT [FK_StudyProgrammeGroups_Places] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Places] ([ID])
GO
ALTER TABLE [dbo].[StudyProgrammeGroups] CHECK CONSTRAINT [FK_StudyProgrammeGroups_Places]
GO
ALTER TABLE [dbo].[StudyProgrammeGroups]  WITH CHECK ADD  CONSTRAINT [FK_StudyProgrammeGroups_StudyCycles] FOREIGN KEY([StudyCycleId])
REFERENCES [dbo].[StudyCycles] ([ID])
GO
ALTER TABLE [dbo].[StudyProgrammeGroups] CHECK CONSTRAINT [FK_StudyProgrammeGroups_StudyCycles]
GO
ALTER TABLE [dbo].[StutyGroupEnrolmentTypes]  WITH CHECK ADD  CONSTRAINT [FK_StutyGroupEnrolmentTypes_EnrolmentStudyTypes] FOREIGN KEY([EnrolmentStudyTypeId])
REFERENCES [dbo].[EnrolmentStudyTypes] ([Id])
GO
ALTER TABLE [dbo].[StutyGroupEnrolmentTypes] CHECK CONSTRAINT [FK_StutyGroupEnrolmentTypes_EnrolmentStudyTypes]
GO
ALTER TABLE [dbo].[StutyGroupEnrolmentTypes]  WITH CHECK ADD  CONSTRAINT [FK_StutyGroupEnrolmentTypes_StudyProgrammeGroups] FOREIGN KEY([StudyProgrammeGroupId])
REFERENCES [dbo].[StudyProgrammeGroups] ([Id])
GO
ALTER TABLE [dbo].[StutyGroupEnrolmentTypes] CHECK CONSTRAINT [FK_StutyGroupEnrolmentTypes_StudyProgrammeGroups]
GO
ALTER TABLE [dbo].[Teachers]  WITH NOCHECK ADD  CONSTRAINT [FK_Teachers_AcademicDegrees] FOREIGN KEY([DegreeID])
REFERENCES [dbo].[AcademicDegrees] ([ID])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_AcademicDegrees]
GO
ALTER TABLE [dbo].[Teachers]  WITH NOCHECK ADD  CONSTRAINT [FK_Teachers_AcademicRanks] FOREIGN KEY([RankID])
REFERENCES [dbo].[AcademicRanks] ([ID])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_AcademicRanks]
GO
ALTER TABLE [dbo].[Teachers]  WITH NOCHECK ADD  CONSTRAINT [FK_Teachers_Communities] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Communities] ([ID])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_Communities]
GO
ALTER TABLE [dbo].[Teachers]  WITH NOCHECK ADD  CONSTRAINT [FK_Teachers_DoctorateDegrees] FOREIGN KEY([DoctorateDegreeId])
REFERENCES [dbo].[DoctorateDegrees] ([Id])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_DoctorateDegrees]
GO
ALTER TABLE [dbo].[Teachers]  WITH NOCHECK ADD  CONSTRAINT [FK_Teachers_DoctorateRanks] FOREIGN KEY([DoctorateRankdId])
REFERENCES [dbo].[DoctorateRanks] ([Id])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_DoctorateRanks]
GO
ALTER TABLE [dbo].[Teachers]  WITH NOCHECK ADD  CONSTRAINT [FK_Teachers_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_Faculty]
GO
ALTER TABLE [dbo].[TeachersExamSchedules]  WITH CHECK ADD  CONSTRAINT [FK_TeachersExamSchedules_ExamSchedules] FOREIGN KEY([ExamSchedulesId])
REFERENCES [dbo].[ExamSchedules] ([ID])
GO
ALTER TABLE [dbo].[TeachersExamSchedules] CHECK CONSTRAINT [FK_TeachersExamSchedules_ExamSchedules]
GO
ALTER TABLE [dbo].[TeachersExamSchedules]  WITH CHECK ADD  CONSTRAINT [FK_TeachersExamSchedules_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[TeachersExamSchedules] CHECK CONSTRAINT [FK_TeachersExamSchedules_Teachers]
GO
ALTER TABLE [dbo].[TeachersInFacultyCourses]  WITH CHECK ADD  CONSTRAINT [FK_TeachersInFacultyCourses_FacultyCourses] FOREIGN KEY([FacultyCourseId])
REFERENCES [dbo].[FacultyCourses] ([Id])
GO
ALTER TABLE [dbo].[TeachersInFacultyCourses] CHECK CONSTRAINT [FK_TeachersInFacultyCourses_FacultyCourses]
GO
ALTER TABLE [dbo].[TeachersInFacultyCourses]  WITH CHECK ADD  CONSTRAINT [FK_TeachersInFacultyCourses_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[TeachersInFacultyCourses] CHECK CONSTRAINT [FK_TeachersInFacultyCourses_Teachers]
GO
ALTER TABLE [dbo].[TeachersInMedDepartments]  WITH CHECK ADD  CONSTRAINT [FK_TeachersInMedDepartments_MedDepartments] FOREIGN KEY([MedDepartmentId])
REFERENCES [dbo].[MedDepartments] ([Id])
GO
ALTER TABLE [dbo].[TeachersInMedDepartments] CHECK CONSTRAINT [FK_TeachersInMedDepartments_MedDepartments]
GO
ALTER TABLE [dbo].[TeachersInMedDepartments]  WITH CHECK ADD  CONSTRAINT [FK_TeachersInMedDepartments_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[TeachersInMedDepartments] CHECK CONSTRAINT [FK_TeachersInMedDepartments_Teachers]
GO
ALTER TABLE [dbo].[TeachersInProgrammesCourses]  WITH NOCHECK ADD  CONSTRAINT [FK_TeachersInProgrammesCourses_ProgrammesCourses] FOREIGN KEY([ProgrammesCourseId])
REFERENCES [dbo].[ProgrammesCourses] ([ID])
GO
ALTER TABLE [dbo].[TeachersInProgrammesCourses] CHECK CONSTRAINT [FK_TeachersInProgrammesCourses_ProgrammesCourses]
GO
ALTER TABLE [dbo].[TeachersInProgrammesCourses]  WITH NOCHECK ADD  CONSTRAINT [FK_TeachersInProgrammesCourses_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[TeachersInProgrammesCourses] CHECK CONSTRAINT [FK_TeachersInProgrammesCourses_Teachers]
GO
ALTER TABLE [dbo].[TeachersInProgrammesCoursesHistory]  WITH CHECK ADD  CONSTRAINT [FK_TeachersInProgrammesCoursesHistory_ProgrammesCourses] FOREIGN KEY([ProgrammeCourseId])
REFERENCES [dbo].[ProgrammesCourses] ([ID])
GO
ALTER TABLE [dbo].[TeachersInProgrammesCoursesHistory] CHECK CONSTRAINT [FK_TeachersInProgrammesCoursesHistory_ProgrammesCourses]
GO
ALTER TABLE [dbo].[TeachersInProgrammesCoursesHistory]  WITH CHECK ADD  CONSTRAINT [FK_TeachersInProgrammesCoursesHistory_Semesters] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semesters] ([ID])
GO
ALTER TABLE [dbo].[TeachersInProgrammesCoursesHistory] CHECK CONSTRAINT [FK_TeachersInProgrammesCoursesHistory_Semesters]
GO
ALTER TABLE [dbo].[TeachersInProgrammesCoursesHistory]  WITH CHECK ADD  CONSTRAINT [FK_TeachersInProgrammesCoursesHistory_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[TeachersInProgrammesCoursesHistory] CHECK CONSTRAINT [FK_TeachersInProgrammesCoursesHistory_Teachers]
GO
ALTER TABLE [dbo].[TeachersReleases]  WITH NOCHECK ADD  CONSTRAINT [FK_TeachersReleases_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[TeachersReleases] CHECK CONSTRAINT [FK_TeachersReleases_Teachers]
GO
ALTER TABLE [dbo].[Term]  WITH CHECK ADD  CONSTRAINT [FK_Term_EnrolmentTerm] FOREIGN KEY([EnrolementTermId])
REFERENCES [dbo].[EnrolmentTerm] ([Id])
GO
ALTER TABLE [dbo].[Term] CHECK CONSTRAINT [FK_Term_EnrolmentTerm]
GO
ALTER TABLE [dbo].[Term]  WITH CHECK ADD  CONSTRAINT [FK_Term_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[Term] CHECK CONSTRAINT [FK_Term_Faculty]
GO
ALTER TABLE [dbo].[TermQuotaNationalities]  WITH CHECK ADD  CONSTRAINT [FK_TermQuotaNationalities_Nationalities] FOREIGN KEY([NationalityId])
REFERENCES [dbo].[Nationalities] ([ID])
GO
ALTER TABLE [dbo].[TermQuotaNationalities] CHECK CONSTRAINT [FK_TermQuotaNationalities_Nationalities]
GO
ALTER TABLE [dbo].[TermQuotaNationalities]  WITH CHECK ADD  CONSTRAINT [FK_TermQuotaNationalities_Term] FOREIGN KEY([TermId])
REFERENCES [dbo].[Term] ([Id])
GO
ALTER TABLE [dbo].[TermQuotaNationalities] CHECK CONSTRAINT [FK_TermQuotaNationalities_Term]
GO
ALTER TABLE [dbo].[TermStudyCycles]  WITH CHECK ADD  CONSTRAINT [FK_TermStudyCycles_StudyCycles] FOREIGN KEY([StudyCycleId])
REFERENCES [dbo].[StudyCycles] ([ID])
GO
ALTER TABLE [dbo].[TermStudyCycles] CHECK CONSTRAINT [FK_TermStudyCycles_StudyCycles]
GO
ALTER TABLE [dbo].[TermStudyCycles]  WITH CHECK ADD  CONSTRAINT [FK_TermStudyCycles_Term] FOREIGN KEY([TermId])
REFERENCES [dbo].[Term] ([Id])
GO
ALTER TABLE [dbo].[TermStudyCycles] CHECK CONSTRAINT [FK_TermStudyCycles_Term]
GO
ALTER TABLE [dbo].[Uploads]  WITH NOCHECK ADD  CONSTRAINT [FK_Uploads_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[Uploads] CHECK CONSTRAINT [FK_Uploads_Faculty]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [UserApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [UserApplication]
GO
ALTER TABLE [dbo].[UsersApplicationControls]  WITH NOCHECK ADD  CONSTRAINT [FK_UsersApplicationControls_ApplicationControls] FOREIGN KEY([ApplicationControlId])
REFERENCES [dbo].[ApplicationControls] ([Id])
GO
ALTER TABLE [dbo].[UsersApplicationControls] CHECK CONSTRAINT [FK_UsersApplicationControls_ApplicationControls]
GO
ALTER TABLE [dbo].[UsersInPermissions]  WITH NOCHECK ADD  CONSTRAINT [FK_UsersInPermissions_UsersPermissions] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[UsersPermissions] ([Id])
GO
ALTER TABLE [dbo].[UsersInPermissions] CHECK CONSTRAINT [FK_UsersInPermissions_UsersPermissions]
GO
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD  CONSTRAINT [UsersInRoleRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[UsersInRoles] CHECK CONSTRAINT [UsersInRoleRole]
GO
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD  CONSTRAINT [UsersInRoleUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UsersInRoles] CHECK CONSTRAINT [UsersInRoleUser]
GO
ALTER TABLE [dbo].[UsersPermissions]  WITH NOCHECK ADD  CONSTRAINT [FK_UsersPermissions_ApplicationControls1] FOREIGN KEY([ApplicationControlId])
REFERENCES [dbo].[ApplicationControls] ([Id])
GO
ALTER TABLE [dbo].[UsersPermissions] CHECK CONSTRAINT [FK_UsersPermissions_ApplicationControls1]
GO
ALTER TABLE [dbo].[QuotaPrices]  WITH NOCHECK ADD  CONSTRAINT [CK_QuotaPrices_StartYear] CHECK  (([StartYear]>(1950) AND [StartYear]<(2999)))
GO
ALTER TABLE [dbo].[QuotaPrices] CHECK CONSTRAINT [CK_QuotaPrices_StartYear]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'How many semesters are needed for this course. With ECTS the default should be 1!' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Courses', @level2type=N'COLUMN',@level2name=N'Semesters'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is the quota for a full time or part time student' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Quotas', @level2type=N'COLUMN',@level2name=N'FullTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 for males, 0 for female' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'SumCredits'
GO
