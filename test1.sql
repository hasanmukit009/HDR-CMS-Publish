USE [CMS]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 27/08/2022 8:18:18 PM ******/
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
