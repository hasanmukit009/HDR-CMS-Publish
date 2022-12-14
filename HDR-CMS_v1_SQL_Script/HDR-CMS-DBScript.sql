USE [master]
GO
/****** Object:  Database [CMS]    Script Date: 26/08/2022 11:34:30 PM ******/
CREATE DATABASE [CMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CMS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CMS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CMS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [CMS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CMS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CMS] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CMS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CMS] SET  MULTI_USER 
GO
ALTER DATABASE [CMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CMS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CMS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CMS] SET QUERY_STORE = OFF
GO
USE [CMS]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[IsLoggedInForFirstTime] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Backup_ChangeOfEnrolmentStatuses]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Backup_ChangeOfEnrolmentStatuses](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](250) NULL,
	[SupervisorName] [nvarchar](250) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[SupervisorEmail] [nvarchar](250) NULL,
	[Course] [nvarchar](50) NULL,
	[StudentNumber] [nvarchar](50) NULL,
	[ChangeStatusToPartTime] [bit] NOT NULL,
	[ChangeStatusToFullTime] [bit] NOT NULL,
	[ChangeStatusToOther] [bit] NOT NULL,
	[ReceivingDomesticRTPStipendScholarship] [bit] NOT NULL,
	[ReceivingInternationalRTPStipendScholarship] [bit] NOT NULL,
	[ReceivingOtherScholarship] [bit] NOT NULL,
	[NameOfOtherScholarship] [nvarchar](max) NULL,
	[ReasonForRequestingChangeOfStatus] [nvarchar](max) NULL,
	[DateForChangeToBeEffective] [datetime2](7) NULL,
	[NameOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureDateOfTheSupervisor] [datetime2](7) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[AssignedSupervisorName] [nvarchar](max) NULL,
	[AssignedSupervisorEmail] [nvarchar](max) NULL,
	[AssignedCoordinatorName] [nvarchar](max) NULL,
	[AssignedCoordinatorEmail] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
	[BackupDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Backup_ChangeOfEnrolmentStatuses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Backup_ChangeOfSupervisors]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Backup_ChangeOfSupervisors](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](250) NULL,
	[CurrentSupervisorEmail] [nvarchar](250) NULL,
	[CurrentSupervisorName] [nvarchar](250) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[Course] [nvarchar](250) NULL,
	[StudentNumber] [nvarchar](250) NULL,
	[NewPrincipalSupervisorEmail] [nvarchar](250) NULL,
	[NewPrincipalSupervisorName] [nvarchar](250) NULL,
	[CollegeOrSchoolForNewPrincipalSupervisor] [nvarchar](50) NULL,
	[PercentageOfNewPrincipalSupervisorContribution] [float] NOT NULL,
	[AssociateSupervisorEmail1] [nvarchar](250) NULL,
	[AssociateSupervisorName1] [nvarchar](250) NULL,
	[CollegeOrSchoolForAssociateSupervisor1] [nvarchar](50) NULL,
	[PercentageOfAssociateSupervisor1Contribution] [float] NOT NULL,
	[AssociateSupervisorEmail2] [nvarchar](250) NULL,
	[AssociateSupervisorName2] [nvarchar](250) NULL,
	[CollegeOrSchoolForAssociateSupervisor2] [nvarchar](50) NULL,
	[PercentageOfAssociateSupervisor2Contribution] [float] NOT NULL,
	[AssociateSupervisorEmail3] [nvarchar](250) NULL,
	[AssociateSupervisorName3] [nvarchar](250) NULL,
	[CollegeOrSchoolForAssociateSupervisor3] [nvarchar](50) NULL,
	[PercentageOfAssociateSupervisor3Contribution] [float] NOT NULL,
	[AssociateSupervisorEmail4] [nvarchar](250) NULL,
	[AssociateSupervisorName4] [nvarchar](250) NULL,
	[CollegeOrSchoolForAssociateSupervisor4] [nvarchar](50) NULL,
	[PercentageOfAssociateSupervisor4Contribution] [float] NOT NULL,
	[NameOfTheOtherPerson1ofSupervisorPanel] [nvarchar](250) NULL,
	[OrganizationOfTheOtherPerson1ofSupervisorPanel] [nvarchar](250) NULL,
	[EmailAddressOfTheOtherPerson1ofSupervisorPanel] [nvarchar](250) NULL,
	[IsTheOtherPerson1AnEndUserOrIndustryPartner] [nvarchar](50) NULL,
	[NameOfTheOtherPerson2ofSupervisorPanel] [nvarchar](250) NULL,
	[OrganizationOfTheOtherPerson2ofSupervisorPanel] [nvarchar](250) NULL,
	[EmailAddressOfTheOtherPerson2ofSupervisorPanel] [nvarchar](250) NULL,
	[IsTheOtherPerson2AnEndUserOrIndustryPartner] [nvarchar](50) NULL,
	[NameOfTheOtherPerson3ofSupervisorPanel] [nvarchar](250) NULL,
	[OrganizationOfTheOtherPerson3ofSupervisorPanel] [nvarchar](250) NULL,
	[EmailAddressOfTheOtherPerson3ofSupervisorPanel] [nvarchar](250) NULL,
	[IsTheOtherPerson3AnEndUserOrIndustryPartner] [nvarchar](50) NULL,
	[NameOfTheOtherPerson4ofSupervisorPanel] [nvarchar](250) NULL,
	[OrganizationOfTheOtherPerson4ofSupervisorPanel] [nvarchar](250) NULL,
	[EmailAddressOfTheOtherPerson4ofSupervisorPanel] [nvarchar](250) NULL,
	[IsTheOtherPerson4AnEndUserOrIndustryPartner] [nvarchar](50) NULL,
	[ReasonForTheChange] [nvarchar](max) NULL,
	[HaveYouAdvisedThem] [nvarchar](50) NULL,
	[ApproximateDateOfChange] [datetime2](7) NULL,
	[WouldYouLikeToShift] [nvarchar](50) NULL,
	[ConfirmNewCollege] [nvarchar](250) NULL,
	[AssignedSupervisorEmail] [nvarchar](250) NULL,
	[AssignedSupervisorName] [nvarchar](250) NULL,
	[AssignedCoordinatorName] [nvarchar](250) NULL,
	[AssignedCoordinatorEmail] [nvarchar](250) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[SignatureOfSupervisor] [nvarchar](max) NULL,
	[SignatureOfCandidate] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
	[BackupDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Backup_ChangeOfSupervisors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Backup_CoCOralDefenceAssessments]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Backup_CoCOralDefenceAssessments](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[CandidateName] [nvarchar](250) NOT NULL,
	[College] [nvarchar](250) NOT NULL,
	[PrincipalSupervisor] [nvarchar](250) NOT NULL,
	[Course] [nvarchar](50) NOT NULL,
	[StudentNumber] [nvarchar](50) NOT NULL,
	[ThesisTitle] [nvarchar](1000) NOT NULL,
	[OralPresentationDate] [datetime2](7) NULL,
	[NameofAssesor1] [nvarchar](250) NULL,
	[IsThisAssessorSupervisor1] [nvarchar](50) NULL,
	[NameofAssesor2] [nvarchar](250) NULL,
	[IsThisAssessorSupervisor2] [nvarchar](50) NULL,
	[NameofAssesor3] [nvarchar](250) NULL,
	[IsThisAssessorSupervisor3] [nvarchar](50) NULL,
	[ProjectAttribute1] [nvarchar](50) NULL,
	[ProjectAttribute2] [nvarchar](50) NULL,
	[ProjectAttribute3] [nvarchar](50) NULL,
	[ProjectAttribute4] [nvarchar](50) NULL,
	[ProjectAttribute5] [nvarchar](50) NULL,
	[FeasibilityAttribute1] [nvarchar](50) NULL,
	[FeasibilityAttribute2] [nvarchar](50) NULL,
	[FeasibilityAttribute3] [nvarchar](50) NULL,
	[FeasibilityAttribute4] [nvarchar](50) NULL,
	[FeasibilityAttribute5] [nvarchar](50) NULL,
	[MethodAttribute1] [nvarchar](50) NULL,
	[MethodAttribute2] [nvarchar](50) NULL,
	[ImprovementSuggestion] [nvarchar](max) NULL,
	[IsPanleAgreedForApproval] [bit] NOT NULL,
	[IsPanleAgreedForReassessment] [bit] NOT NULL,
	[IsPanleAgreedForRejectOrRaiseConcern] [bit] NOT NULL,
	[NameofTheChair] [nvarchar](100) NULL,
	[SignatureofTheChair] [nvarchar](max) NULL,
	[SignatureDateofTheChair] [datetime2](7) NULL,
	[FurtherComment] [nvarchar](max) NULL,
	[DeanAgreedWithPanel] [bit] NOT NULL,
	[DeanDoNotAgreedWithPanel] [bit] NOT NULL,
	[DeanFurtherComment] [nvarchar](max) NULL,
	[IsEthicsApprovalRequiredForTheResearchForHuman] [bit] NOT NULL,
	[IsEthicsApprovalRequiredForTheResearchForAnimal] [bit] NOT NULL,
	[IsEthicsApprovalRequiredForTheResearchForNeither] [bit] NOT NULL,
	[DeanName] [nvarchar](100) NULL,
	[DeanSignature] [nvarchar](max) NULL,
	[DeanSignatureDate] [datetime2](7) NULL,
	[DeanApproveConfirmationOfCandidature] [bit] NOT NULL,
	[DeanApproveTheDecisionToResubmitTheResearch] [bit] NOT NULL,
	[DeanApproveToArrangeAnAlternativeApproach] [bit] NOT NULL,
	[DeanApprovalComment] [nvarchar](max) NULL,
	[DeanName1] [nvarchar](100) NULL,
	[DeanSignature1] [nvarchar](max) NULL,
	[DeanSignatureDate1] [datetime2](7) NULL,
	[DeanEndorsmentComment] [nvarchar](max) NULL,
	[IsCompleteSupervisionAgreement] [bit] NOT NULL,
	[IsCompleteResearchProposalAndSupervisorEvaluation] [bit] NOT NULL,
	[IsCompleteResearchProposal] [bit] NOT NULL,
	[IsCompleteEpigeum] [bit] NOT NULL,
	[IsCompleteRecordEthicsRequirements] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[OrderDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[BackupDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Backup_CoCOralDefenceAssessments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Backup_DomesticExtensions]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Backup_DomesticExtensions](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](250) NULL,
	[SupervisorName] [nvarchar](250) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[SupervisorEmail] [nvarchar](250) NULL,
	[Course] [nvarchar](50) NULL,
	[StudentNumber] [nvarchar](50) NULL,
	[RequiredExtensionForCandidature] [nvarchar](max) NULL,
	[NewEndDate] [datetime2](7) NULL,
	[RequiredExtensionForscholarship] [nvarchar](max) NULL,
	[NameOfTheScholarship] [nvarchar](max) NULL,
	[PreviouslyApprovedExtensionList] [nvarchar](max) NULL,
	[ReasonsForNotBeingAbleToComplete] [nvarchar](max) NULL,
	[IsSignedDocumentAttached] [bit] NOT NULL,
	[IsTimeTableAttached] [bit] NOT NULL,
	[SignatureOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureDateOfTheSupervisor] [datetime2](7) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[AssignedSupervisorName] [nvarchar](max) NULL,
	[AssignedSupervisorEmail] [nvarchar](max) NULL,
	[AssignedCoordinatorName] [nvarchar](max) NULL,
	[AssignedCoordinatorEmail] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
	[BackupDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Backup_DomesticExtensions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Backup_FormActivities]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Backup_FormActivities](
	[ID] [uniqueidentifier] NOT NULL,
	[FormID] [nvarchar](max) NULL,
	[FormName] [nvarchar](max) NULL,
	[FormCreateDate] [datetime2](7) NULL,
	[StudentID] [nvarchar](max) NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentNumber] [nvarchar](max) NULL,
	[StudentName] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](max) NULL,
	[SupervisorName] [nvarchar](max) NULL,
	[SupervisorEmail] [nvarchar](max) NULL,
	[CoordinatorName] [nvarchar](max) NULL,
	[CoordinatorEmail] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[BackupDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Backup_FormActivities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Backup_InternationalExtensions]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Backup_InternationalExtensions](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](250) NULL,
	[SupervisorName] [nvarchar](250) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[SupervisorEmail] [nvarchar](250) NULL,
	[Course] [nvarchar](50) NULL,
	[StudentNumber] [nvarchar](50) NULL,
	[AssociateSupervisor] [nvarchar](500) NULL,
	[CommencementDate] [datetime2](7) NOT NULL,
	[CompletionDate] [datetime2](7) NOT NULL,
	[RequiredExtensionForCandidature] [nvarchar](max) NULL,
	[NewEndDate] [datetime2](7) NULL,
	[IsFinancialSupportRequired] [nvarchar](max) NULL,
	[StudentVisaExpiryDate] [datetime2](7) NULL,
	[IsTherePreviousApprovedExtension] [nvarchar](max) NULL,
	[ListOfPreviousApprovedExtension] [nvarchar](max) NULL,
	[ReasonsForNotBeingAbleToComplete] [nvarchar](max) NULL,
	[DetailsOfScholarShip] [nvarchar](max) NULL,
	[Semester1] [nvarchar](max) NULL,
	[SemesterYear1] [nvarchar](max) NULL,
	[Semester2] [nvarchar](max) NULL,
	[SemesterYear2] [nvarchar](max) NULL,
	[CDUFund1] [nvarchar](max) NULL,
	[PersonalFund1] [nvarchar](max) NULL,
	[OtherFund1] [nvarchar](max) NULL,
	[SourceOfOtherFund1] [nvarchar](max) NULL,
	[CDUFund2] [nvarchar](max) NULL,
	[PersonalFund2] [nvarchar](max) NULL,
	[OtherFund2] [nvarchar](max) NULL,
	[SourceOfOtherFund2] [nvarchar](max) NULL,
	[OtherDetails] [nvarchar](max) NULL,
	[CDUFund3] [nvarchar](max) NULL,
	[PersonalFund3] [nvarchar](max) NULL,
	[OtherFund3] [nvarchar](max) NULL,
	[SourceOfOtherFund3] [nvarchar](max) NULL,
	[TotalCDUFund] [nvarchar](max) NULL,
	[TotalPersonalFund] [nvarchar](max) NULL,
	[TotalOtherFund] [nvarchar](max) NULL,
	[IsTimelineAttached] [bit] NOT NULL,
	[IsAnnualProgressReport] [bit] NOT NULL,
	[IsPrincipalSupervisorAttachedHisSupportingDocuments] [bit] NOT NULL,
	[IsMySponsorAttachedHisSupportingDocuments] [bit] NOT NULL,
	[IsDeanOrDelegateAttachedHisSupportingDocuments] [bit] NOT NULL,
	[SignatureOfTheCandidate] [nvarchar](max) NULL,
	[SignatureDateOfTheCandidate] [datetime2](7) NULL,
	[SignatureOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureDateOfTheSupervisor] [datetime2](7) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[AssignedSupervisorName] [nvarchar](max) NULL,
	[AssignedSupervisorEmail] [nvarchar](max) NULL,
	[AssignedCoordinatorName] [nvarchar](max) NULL,
	[AssignedCoordinatorEmail] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
	[BackupDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Backup_InternationalExtensions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Backup_LeaveOfAbsences]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Backup_LeaveOfAbsences](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](250) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[SupervisorEmail] [nvarchar](250) NULL,
	[SupervisorName] [nvarchar](500) NULL,
	[CourseCode] [nvarchar](50) NULL,
	[StudentNumber] [nvarchar](50) NULL,
	[LeaveDateFrom] [datetime2](7) NULL,
	[LeaveDateTo] [datetime2](7) NULL,
	[InternationalStudent] [nvarchar](max) NULL,
	[ScholarshipHolder] [nvarchar](max) NULL,
	[NameOfTheScholarShip] [nvarchar](150) NULL,
	[ReasonForLeave] [nvarchar](1000) NULL,
	[AssignedSupervisorName] [nvarchar](250) NULL,
	[AssignedSupervisorEmail] [nvarchar](250) NULL,
	[AssignedCoordinatorName] [nvarchar](250) NULL,
	[AssignedCoordinatorEmail] [nvarchar](250) NULL,
	[NameOfTheSupervisorName] [nvarchar](max) NULL,
	[SignatureOfTheSupervisor] [nvarchar](max) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
	[BackupDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Backup_LeaveOfAbsences] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Backup_MilestoneExtensionRequests]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Backup_MilestoneExtensionRequests](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](250) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[SupervisorEmail] [nvarchar](250) NULL,
	[SupervisorName] [nvarchar](250) NULL,
	[Course] [nvarchar](50) NULL,
	[StudentNumber] [nvarchar](50) NULL,
	[IsSupervisionAgreementRequireExtension] [bit] NOT NULL,
	[SupervisionAgreementCompletionDate] [datetime2](7) NULL,
	[IsResearchProposalRequireExtension] [bit] NOT NULL,
	[ResearchProposalCompletionDate] [datetime2](7) NULL,
	[IsOralDefensePresentationRequireExtension] [bit] NOT NULL,
	[OralDefensePresentationCompletionDate] [datetime2](7) NULL,
	[ReasonForExtension] [nvarchar](max) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[NameOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureDateOfTheSupervisor] [datetime2](7) NULL,
	[AssignedSupervisorName] [nvarchar](max) NULL,
	[AssignedSupervisorEmail] [nvarchar](max) NULL,
	[AssignedCoordinatorName] [nvarchar](max) NULL,
	[AssignedCoordinatorEmail] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
	[BackupDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Backup_MilestoneExtensionRequests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Backup_UpgradeToPhds]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Backup_UpgradeToPhds](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](max) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[SupervisorEmail] [nvarchar](250) NULL,
	[SupervisorName] [nvarchar](max) NULL,
	[CourseCommencementDate] [datetime2](7) NULL,
	[StudentNumber] [nvarchar](50) NULL,
	[FieldOfResearch] [nvarchar](250) NULL,
	[WillTheProjectChangeExtensivelyEnoughToWarrantAnInterimReview] [nvarchar](max) NULL,
	[WillTheProjectDemandaVariationToEthicsOrAnAdditionalEthicsApplication] [nvarchar](max) NULL,
	[CouldTheChangesInThisProjectBreachSanctionsOrDefenceControlMeasures] [nvarchar](max) NULL,
	[DoYouBelieveTheCandidateIsMoreLikelyThanNotToCompleteThePhDOnTime] [nvarchar](max) NULL,
	[HaveAllTheSupervisorsOfThisCandidateExplicitlyAgreedToThisUpgrade] [nvarchar](max) NULL,
	[IsSupportLetterAttached] [nvarchar](max) NULL,
	[IsReportOnCompletedResearchAttached] [nvarchar](max) NULL,
	[AssignedSupervisorName] [nvarchar](max) NULL,
	[AssignedSupervisorEmail] [nvarchar](max) NULL,
	[AssignedCoordinatorName] [nvarchar](max) NULL,
	[AssignedCoordinatorEmail] [nvarchar](max) NULL,
	[IsSupervisorApproved] [nvarchar](max) NULL,
	[NameOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureDateOfTheSupervisor] [datetime2](7) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
	[BackupDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Backup_UpgradeToPhds] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChangeOfEnrolmentStatuses]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChangeOfEnrolmentStatuses](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](250) NULL,
	[SupervisorName] [nvarchar](250) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[SupervisorEmail] [nvarchar](250) NULL,
	[Course] [nvarchar](50) NULL,
	[StudentNumber] [nvarchar](50) NULL,
	[ChangeStatusToPartTime] [bit] NOT NULL,
	[ChangeStatusToFullTime] [bit] NOT NULL,
	[ChangeStatusToOther] [bit] NOT NULL,
	[ReceivingDomesticRTPStipendScholarship] [bit] NOT NULL,
	[ReceivingInternationalRTPStipendScholarship] [bit] NOT NULL,
	[ReceivingOtherScholarship] [bit] NOT NULL,
	[NameOfOtherScholarship] [nvarchar](max) NULL,
	[ReasonForRequestingChangeOfStatus] [nvarchar](max) NULL,
	[DateForChangeToBeEffective] [datetime2](7) NULL,
	[NameOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureDateOfTheSupervisor] [datetime2](7) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[AssignedSupervisorName] [nvarchar](max) NULL,
	[AssignedSupervisorEmail] [nvarchar](max) NULL,
	[AssignedCoordinatorName] [nvarchar](max) NULL,
	[AssignedCoordinatorEmail] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ChangeOfEnrolmentStatuses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChangeOfSupervisors]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChangeOfSupervisors](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](250) NULL,
	[CurrentSupervisorEmail] [nvarchar](250) NULL,
	[CurrentSupervisorName] [nvarchar](250) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[Course] [nvarchar](250) NULL,
	[StudentNumber] [nvarchar](250) NULL,
	[NewPrincipalSupervisorEmail] [nvarchar](250) NULL,
	[NewPrincipalSupervisorName] [nvarchar](250) NULL,
	[CollegeOrSchoolForNewPrincipalSupervisor] [nvarchar](50) NULL,
	[PercentageOfNewPrincipalSupervisorContribution] [float] NOT NULL,
	[AssociateSupervisorEmail1] [nvarchar](250) NULL,
	[AssociateSupervisorName1] [nvarchar](250) NULL,
	[CollegeOrSchoolForAssociateSupervisor1] [nvarchar](50) NULL,
	[PercentageOfAssociateSupervisor1Contribution] [float] NOT NULL,
	[AssociateSupervisorEmail2] [nvarchar](250) NULL,
	[AssociateSupervisorName2] [nvarchar](250) NULL,
	[CollegeOrSchoolForAssociateSupervisor2] [nvarchar](50) NULL,
	[PercentageOfAssociateSupervisor2Contribution] [float] NOT NULL,
	[AssociateSupervisorEmail3] [nvarchar](250) NULL,
	[AssociateSupervisorName3] [nvarchar](250) NULL,
	[CollegeOrSchoolForAssociateSupervisor3] [nvarchar](50) NULL,
	[PercentageOfAssociateSupervisor3Contribution] [float] NOT NULL,
	[AssociateSupervisorEmail4] [nvarchar](250) NULL,
	[AssociateSupervisorName4] [nvarchar](250) NULL,
	[CollegeOrSchoolForAssociateSupervisor4] [nvarchar](50) NULL,
	[PercentageOfAssociateSupervisor4Contribution] [float] NOT NULL,
	[NameOfTheOtherPerson1ofSupervisorPanel] [nvarchar](250) NULL,
	[OrganizationOfTheOtherPerson1ofSupervisorPanel] [nvarchar](250) NULL,
	[EmailAddressOfTheOtherPerson1ofSupervisorPanel] [nvarchar](250) NULL,
	[IsTheOtherPerson1AnEndUserOrIndustryPartner] [nvarchar](50) NULL,
	[NameOfTheOtherPerson2ofSupervisorPanel] [nvarchar](250) NULL,
	[OrganizationOfTheOtherPerson2ofSupervisorPanel] [nvarchar](250) NULL,
	[EmailAddressOfTheOtherPerson2ofSupervisorPanel] [nvarchar](250) NULL,
	[IsTheOtherPerson2AnEndUserOrIndustryPartner] [nvarchar](50) NULL,
	[NameOfTheOtherPerson3ofSupervisorPanel] [nvarchar](250) NULL,
	[OrganizationOfTheOtherPerson3ofSupervisorPanel] [nvarchar](250) NULL,
	[EmailAddressOfTheOtherPerson3ofSupervisorPanel] [nvarchar](250) NULL,
	[IsTheOtherPerson3AnEndUserOrIndustryPartner] [nvarchar](50) NULL,
	[NameOfTheOtherPerson4ofSupervisorPanel] [nvarchar](250) NULL,
	[OrganizationOfTheOtherPerson4ofSupervisorPanel] [nvarchar](250) NULL,
	[EmailAddressOfTheOtherPerson4ofSupervisorPanel] [nvarchar](250) NULL,
	[IsTheOtherPerson4AnEndUserOrIndustryPartner] [nvarchar](50) NULL,
	[ReasonForTheChange] [nvarchar](max) NULL,
	[HaveYouAdvisedThem] [nvarchar](50) NULL,
	[ApproximateDateOfChange] [datetime2](7) NULL,
	[WouldYouLikeToShift] [nvarchar](50) NULL,
	[ConfirmNewCollege] [nvarchar](250) NULL,
	[AssignedSupervisorEmail] [nvarchar](250) NULL,
	[AssignedSupervisorName] [nvarchar](250) NULL,
	[AssignedCoordinatorName] [nvarchar](250) NULL,
	[AssignedCoordinatorEmail] [nvarchar](250) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[SignatureOfSupervisor] [nvarchar](max) NULL,
	[SignatureOfCandidate] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ChangeOfSupervisors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoCOralDefenceAssessments]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoCOralDefenceAssessments](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[CandidateName] [nvarchar](250) NOT NULL,
	[College] [nvarchar](250) NOT NULL,
	[PrincipalSupervisor] [nvarchar](250) NOT NULL,
	[Course] [nvarchar](50) NOT NULL,
	[StudentNumber] [nvarchar](50) NOT NULL,
	[ThesisTitle] [nvarchar](1000) NOT NULL,
	[OralPresentationDate] [datetime2](7) NULL,
	[NameofAssesor1] [nvarchar](250) NULL,
	[IsThisAssessorSupervisor1] [nvarchar](50) NULL,
	[NameofAssesor2] [nvarchar](250) NULL,
	[IsThisAssessorSupervisor2] [nvarchar](50) NULL,
	[NameofAssesor3] [nvarchar](250) NULL,
	[IsThisAssessorSupervisor3] [nvarchar](50) NULL,
	[ProjectAttribute1] [nvarchar](50) NULL,
	[ProjectAttribute2] [nvarchar](50) NULL,
	[ProjectAttribute3] [nvarchar](50) NULL,
	[ProjectAttribute4] [nvarchar](50) NULL,
	[ProjectAttribute5] [nvarchar](50) NULL,
	[FeasibilityAttribute1] [nvarchar](50) NULL,
	[FeasibilityAttribute2] [nvarchar](50) NULL,
	[FeasibilityAttribute3] [nvarchar](50) NULL,
	[FeasibilityAttribute4] [nvarchar](50) NULL,
	[FeasibilityAttribute5] [nvarchar](50) NULL,
	[MethodAttribute1] [nvarchar](50) NULL,
	[MethodAttribute2] [nvarchar](50) NULL,
	[ImprovementSuggestion] [nvarchar](max) NULL,
	[IsPanleAgreedForApproval] [bit] NOT NULL,
	[IsPanleAgreedForReassessment] [bit] NOT NULL,
	[IsPanleAgreedForRejectOrRaiseConcern] [bit] NOT NULL,
	[NameofTheChair] [nvarchar](100) NULL,
	[SignatureofTheChair] [nvarchar](max) NULL,
	[SignatureDateofTheChair] [datetime2](7) NULL,
	[FurtherComment] [nvarchar](max) NULL,
	[DeanAgreedWithPanel] [bit] NOT NULL,
	[DeanDoNotAgreedWithPanel] [bit] NOT NULL,
	[DeanFurtherComment] [nvarchar](max) NULL,
	[IsEthicsApprovalRequiredForTheResearchForHuman] [bit] NOT NULL,
	[IsEthicsApprovalRequiredForTheResearchForAnimal] [bit] NOT NULL,
	[IsEthicsApprovalRequiredForTheResearchForNeither] [bit] NOT NULL,
	[DeanName] [nvarchar](100) NULL,
	[DeanSignature] [nvarchar](max) NULL,
	[DeanSignatureDate] [datetime2](7) NULL,
	[DeanApproveConfirmationOfCandidature] [bit] NOT NULL,
	[DeanApproveTheDecisionToResubmitTheResearch] [bit] NOT NULL,
	[DeanApproveToArrangeAnAlternativeApproach] [bit] NOT NULL,
	[DeanApprovalComment] [nvarchar](max) NULL,
	[DeanName1] [nvarchar](100) NULL,
	[DeanSignature1] [nvarchar](max) NULL,
	[DeanSignatureDate1] [datetime2](7) NULL,
	[DeanEndorsmentComment] [nvarchar](max) NULL,
	[IsCompleteSupervisionAgreement] [bit] NOT NULL,
	[IsCompleteResearchProposalAndSupervisorEvaluation] [bit] NOT NULL,
	[IsCompleteResearchProposal] [bit] NOT NULL,
	[IsCompleteEpigeum] [bit] NOT NULL,
	[IsCompleteRecordEthicsRequirements] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[OrderDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_CoCOralDefenceAssessments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CodeMilestones]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeMilestones](
	[ID] [uniqueidentifier] NOT NULL,
	[Task] [nvarchar](max) NULL,
	[Duration] [nvarchar](max) NULL,
	[StudentType] [nvarchar](max) NULL,
	[CourseCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_CodeMilestones] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[ID] [uniqueidentifier] NOT NULL,
	[FormType] [nvarchar](max) NULL,
	[FormID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentNumber] [nvarchar](max) NULL,
	[FileName] [nvarchar](max) NULL,
	[FilePath] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DomesticExtensions]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DomesticExtensions](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](250) NULL,
	[SupervisorName] [nvarchar](250) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[SupervisorEmail] [nvarchar](250) NULL,
	[Course] [nvarchar](50) NULL,
	[StudentNumber] [nvarchar](50) NULL,
	[RequiredExtensionForCandidature] [nvarchar](max) NULL,
	[NewEndDate] [datetime2](7) NULL,
	[RequiredExtensionForscholarship] [nvarchar](max) NULL,
	[NameOfTheScholarship] [nvarchar](max) NULL,
	[PreviouslyApprovedExtensionList] [nvarchar](max) NULL,
	[ReasonsForNotBeingAbleToComplete] [nvarchar](max) NULL,
	[IsSignedDocumentAttached] [bit] NOT NULL,
	[IsTimeTableAttached] [bit] NOT NULL,
	[SignatureOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureDateOfTheSupervisor] [datetime2](7) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[AssignedSupervisorName] [nvarchar](max) NULL,
	[AssignedSupervisorEmail] [nvarchar](max) NULL,
	[AssignedCoordinatorName] [nvarchar](max) NULL,
	[AssignedCoordinatorEmail] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
 CONSTRAINT [PK_DomesticExtensions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormActivities]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormActivities](
	[ID] [uniqueidentifier] NOT NULL,
	[FormID] [nvarchar](max) NULL,
	[FormName] [nvarchar](max) NULL,
	[FormCreateDate] [datetime2](7) NOT NULL,
	[StudentID] [nvarchar](max) NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentNumber] [nvarchar](max) NULL,
	[StudentName] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](max) NULL,
	[SupervisorName] [nvarchar](max) NULL,
	[SupervisorEmail] [nvarchar](max) NULL,
	[CoordinatorName] [nvarchar](max) NULL,
	[CoordinatorEmail] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_FormActivities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternationalExtensions]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternationalExtensions](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](250) NULL,
	[SupervisorName] [nvarchar](250) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[SupervisorEmail] [nvarchar](250) NULL,
	[Course] [nvarchar](50) NULL,
	[StudentNumber] [nvarchar](50) NULL,
	[AssociateSupervisor] [nvarchar](500) NULL,
	[CommencementDate] [datetime2](7) NOT NULL,
	[CompletionDate] [datetime2](7) NOT NULL,
	[RequiredExtensionForCandidature] [nvarchar](max) NULL,
	[NewEndDate] [datetime2](7) NULL,
	[IsFinancialSupportRequired] [nvarchar](max) NULL,
	[StudentVisaExpiryDate] [datetime2](7) NULL,
	[IsTherePreviousApprovedExtension] [nvarchar](max) NULL,
	[ListOfPreviousApprovedExtension] [nvarchar](max) NULL,
	[ReasonsForNotBeingAbleToComplete] [nvarchar](max) NULL,
	[DetailsOfScholarShip] [nvarchar](max) NULL,
	[Semester1] [nvarchar](max) NULL,
	[SemesterYear1] [nvarchar](max) NULL,
	[Semester2] [nvarchar](max) NULL,
	[SemesterYear2] [nvarchar](max) NULL,
	[CDUFund1] [nvarchar](max) NULL,
	[PersonalFund1] [nvarchar](max) NULL,
	[OtherFund1] [nvarchar](max) NULL,
	[SourceOfOtherFund1] [nvarchar](max) NULL,
	[CDUFund2] [nvarchar](max) NULL,
	[PersonalFund2] [nvarchar](max) NULL,
	[OtherFund2] [nvarchar](max) NULL,
	[SourceOfOtherFund2] [nvarchar](max) NULL,
	[OtherDetails] [nvarchar](max) NULL,
	[CDUFund3] [nvarchar](max) NULL,
	[PersonalFund3] [nvarchar](max) NULL,
	[OtherFund3] [nvarchar](max) NULL,
	[SourceOfOtherFund3] [nvarchar](max) NULL,
	[TotalCDUFund] [nvarchar](max) NULL,
	[TotalPersonalFund] [nvarchar](max) NULL,
	[TotalOtherFund] [nvarchar](max) NULL,
	[IsTimelineAttached] [bit] NOT NULL,
	[IsAnnualProgressReport] [bit] NOT NULL,
	[IsPrincipalSupervisorAttachedHisSupportingDocuments] [bit] NOT NULL,
	[IsMySponsorAttachedHisSupportingDocuments] [bit] NOT NULL,
	[IsDeanOrDelegateAttachedHisSupportingDocuments] [bit] NOT NULL,
	[SignatureOfTheCandidate] [nvarchar](max) NULL,
	[SignatureDateOfTheCandidate] [datetime2](7) NULL,
	[SignatureOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureDateOfTheSupervisor] [datetime2](7) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[AssignedSupervisorName] [nvarchar](max) NULL,
	[AssignedSupervisorEmail] [nvarchar](max) NULL,
	[AssignedCoordinatorName] [nvarchar](max) NULL,
	[AssignedCoordinatorEmail] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
 CONSTRAINT [PK_InternationalExtensions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LeaveOfAbsences]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveOfAbsences](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](250) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[SupervisorEmail] [nvarchar](250) NULL,
	[SupervisorName] [nvarchar](500) NULL,
	[CourseCode] [nvarchar](50) NULL,
	[StudentNumber] [nvarchar](50) NULL,
	[LeaveDateFrom] [datetime2](7) NULL,
	[LeaveDateTo] [datetime2](7) NULL,
	[InternationalStudent] [nvarchar](max) NULL,
	[ScholarshipHolder] [nvarchar](max) NULL,
	[NameOfTheScholarShip] [nvarchar](150) NULL,
	[ReasonForLeave] [nvarchar](1000) NULL,
	[AssignedSupervisorName] [nvarchar](250) NULL,
	[AssignedSupervisorEmail] [nvarchar](250) NULL,
	[AssignedCoordinatorName] [nvarchar](250) NULL,
	[AssignedCoordinatorEmail] [nvarchar](250) NULL,
	[NameOfTheSupervisorName] [nvarchar](max) NULL,
	[SignatureOfTheSupervisor] [nvarchar](max) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
 CONSTRAINT [PK_LeaveOfAbsences] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MilestoneExtensionRequests]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MilestoneExtensionRequests](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](250) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[SupervisorEmail] [nvarchar](250) NULL,
	[SupervisorName] [nvarchar](250) NULL,
	[Course] [nvarchar](50) NULL,
	[StudentNumber] [nvarchar](50) NULL,
	[IsSupervisionAgreementRequireExtension] [bit] NOT NULL,
	[SupervisionAgreementCompletionDate] [datetime2](7) NULL,
	[IsResearchProposalRequireExtension] [bit] NOT NULL,
	[ResearchProposalCompletionDate] [datetime2](7) NULL,
	[IsOralDefensePresentationRequireExtension] [bit] NOT NULL,
	[OralDefensePresentationCompletionDate] [datetime2](7) NULL,
	[ReasonForExtension] [nvarchar](max) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[NameOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureDateOfTheSupervisor] [datetime2](7) NULL,
	[AssignedSupervisorName] [nvarchar](max) NULL,
	[AssignedSupervisorEmail] [nvarchar](max) NULL,
	[AssignedCoordinatorName] [nvarchar](max) NULL,
	[AssignedCoordinatorEmail] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
 CONSTRAINT [PK_MilestoneExtensionRequests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Milestones]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Milestones](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentNumber] [nvarchar](max) NULL,
	[Task] [nvarchar](max) NULL,
	[Duration] [nvarchar](max) NULL,
	[DueDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Milestones] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffs](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[FirstName] [nvarchar](250) NOT NULL,
	[LastName] [nvarchar](250) NOT NULL,
	[FullName] [nvarchar](500) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[StaffType] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Staffs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentNumber] [nvarchar](10) NOT NULL,
	[LastName] [nvarchar](250) NOT NULL,
	[FirstName] [nvarchar](250) NOT NULL,
	[FullName] [nvarchar](500) NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[CommencementDate] [datetime2](7) NULL,
	[NewDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[HighOrLow] [nvarchar](50) NOT NULL,
	[FTOrPT] [nvarchar](50) NOT NULL,
	[ExternalOrInternal] [nvarchar](50) NOT NULL,
	[EnrollmentStatus] [nvarchar](50) NOT NULL,
	[CourseCode] [nvarchar](50) NOT NULL,
	[SupervisorEmail] [nvarchar](250) NULL,
	[SupervisorName] [nvarchar](500) NULL,
	[StudentType] [nvarchar](50) NOT NULL,
	[OfficeSpaceLocation] [nvarchar](50) NULL,
	[ThesisTitle] [nvarchar](max) NULL,
	[TotalTimeLeft] [int] NOT NULL,
	[CreatedBy] [nvarchar](250) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](250) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[LastChangeDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UpgradeToPhds]    Script Date: 26/08/2022 11:34:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UpgradeToPhds](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[StudentID] [nvarchar](max) NULL,
	[StudentEmail] [nvarchar](max) NULL,
	[CandidateName] [nvarchar](250) NULL,
	[College] [nvarchar](250) NULL,
	[SupervisorEmail] [nvarchar](250) NULL,
	[SupervisorName] [nvarchar](max) NULL,
	[CourseCommencementDate] [datetime2](7) NULL,
	[StudentNumber] [nvarchar](50) NULL,
	[FieldOfResearch] [nvarchar](250) NULL,
	[WillTheProjectChangeExtensivelyEnoughToWarrantAnInterimReview] [nvarchar](max) NULL,
	[WillTheProjectDemandaVariationToEthicsOrAnAdditionalEthicsApplication] [nvarchar](max) NULL,
	[CouldTheChangesInThisProjectBreachSanctionsOrDefenceControlMeasures] [nvarchar](max) NULL,
	[DoYouBelieveTheCandidateIsMoreLikelyThanNotToCompleteThePhDOnTime] [nvarchar](max) NULL,
	[HaveAllTheSupervisorsOfThisCandidateExplicitlyAgreedToThisUpgrade] [nvarchar](max) NULL,
	[IsSupportLetterAttached] [nvarchar](max) NULL,
	[IsReportOnCompletedResearchAttached] [nvarchar](max) NULL,
	[AssignedSupervisorName] [nvarchar](max) NULL,
	[AssignedSupervisorEmail] [nvarchar](max) NULL,
	[AssignedCoordinatorName] [nvarchar](max) NULL,
	[AssignedCoordinatorEmail] [nvarchar](max) NULL,
	[IsSupervisorApproved] [nvarchar](max) NULL,
	[NameOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureOfTheSupervisor] [nvarchar](max) NULL,
	[SignatureDateOfTheSupervisor] [datetime2](7) NULL,
	[SupervisorFeedback] [nvarchar](max) NULL,
	[CoordinatorFeedback] [nvarchar](max) NULL,
	[ActivityLog] [nvarchar](max) NULL,
	[CurrentPosition] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[AssignedTo] [nvarchar](max) NULL,
	[AssignedBy] [nvarchar](max) NULL,
	[AssignedDate] [datetime2](7) NULL,
	[ApprovedBy] [nvarchar](max) NULL,
	[ApprovalDate] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderByDate] [datetime2](7) NULL,
 CONSTRAINT [PK_UpgradeToPhds] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 26/08/2022 11:34:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 26/08/2022 11:34:31 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 26/08/2022 11:34:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 26/08/2022 11:34:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 26/08/2022 11:34:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 26/08/2022 11:34:31 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 26/08/2022 11:34:31 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [CMS] SET  READ_WRITE 
GO
