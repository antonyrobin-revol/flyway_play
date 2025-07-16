SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping [dbo].[spCmnCreateSilentLogin]'
GO
DROP PROCEDURE [dbo].[spCmnCreateSilentLogin]
GO
PRINT N'Creating [dbo].[EmailApplicationOpenMails]'
GO
CREATE TABLE [dbo].[EmailApplicationOpenMails]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[OpenEmailCategoryID] [INT] NOT NULL,
[RecordID] [BIGINT] NULL,
[SenderID] [BIGINT] NULL,
[Subject] [NVARCHAR] (1000) NOT NULL,
[EmailDescription] [NVARCHAR] (max) NULL,
[EmailDate] [DATE] NULL,
[ClientID] [BIGINT] NULL,
[ClientContacts] [VARCHAR] (max) NULL,
[Employees] [VARCHAR] (max) NULL,
[OtherMails] [VARCHAR] (max) NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_EmailApplicationOpenMails_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_EmailApplicationOpenMails_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_EmailApplicationOpenMails_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_EmailApplicationOpenMails_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_EmailApplicationOpenMails_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_EmailApplicationOpenMails_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_EmailApplicationOpenMails] on [dbo].[EmailApplicationOpenMails]'
GO
ALTER TABLE [dbo].[EmailApplicationOpenMails] ADD CONSTRAINT [PK_EmailApplicationOpenMails] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_EmailApplicationOpenMails] on [dbo].[EmailApplicationOpenMails]'
GO
CREATE NONCLUSTERED INDEX [IDX_EmailApplicationOpenMails] ON [dbo].[EmailApplicationOpenMails] ([OpenEmailCategoryID], [RecordID])
GO
PRINT N'Creating [dbo].[EmailConfiguration]'
GO
CREATE TABLE [dbo].[EmailConfiguration]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[Name] [NVARCHAR] (200) NOT NULL,
[ModuleID] [INT] NULL,
[FormID] [INT] NULL,
[EmailCategory] [INT] NULL,
[ProcessID] [INT] NULL,
[Subject] [NVARCHAR] (1000) NOT NULL,
[MailContent] [NVARCHAR] (max) NULL,
[IsHtml] [BIT] NOT NULL,
[Comments] [NVARCHAR] (4000) NULL,
[Status] [INT] NOT NULL,
[FixedEmails] [NVARCHAR] (max) NULL,
[ProcessOwner] [VARCHAR] (500) NULL,
[SpName] [VARCHAR] (255) NULL,
[BacklogDays] [INT] NULL,
[IsExternalApi] [BIT] NULL,
[ExternalApiID] [INT] NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_EmailConfiguration_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_EmailConfiguration_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_EmailConfiguration_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_EmailConfiguration_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_EmailConfiguration_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_EmailConfiguration_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL,
[ScheduleTypeID] [INT] NULL,
[ScheduleTime] [TIME] NULL,
[MonthDays] [VARCHAR] (1000) NULL,
[WeekDays] [VARCHAR] (1000) NULL,
[ReportDays] [INT] NULL,
[Designations] [VARCHAR] (1000) NULL,
[Employees] [VARCHAR] (1000) NULL,
[ReportSPName] [VARCHAR] (255) NULL,
[ReportTypeID] [INT] NULL,
[MailContentCk] [NVARCHAR] (max) NULL,
[EmailFrom] [NVARCHAR] (500) NULL,
[EmailFromName] [NVARCHAR] (500) NULL,
[EmailCC] [NVARCHAR] (max) NULL,
[EmailAttachments] [NVARCHAR] (max) NULL,
[RetryCount] [INT] NULL
)
GO
PRINT N'Creating primary key [PK_EmailConfiguration] on [dbo].[EmailConfiguration]'
GO
ALTER TABLE [dbo].[EmailConfiguration] ADD CONSTRAINT [PK_EmailConfiguration] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_EmailConfiguration] on [dbo].[EmailConfiguration]'
GO
CREATE NONCLUSTERED INDEX [IDX_EmailConfiguration] ON [dbo].[EmailConfiguration] ([Name], [Status])
GO
PRINT N'Creating [dbo].[EmailProcessConfiguration]'
GO
CREATE TABLE [dbo].[EmailProcessConfiguration]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[FormID] [INT] NULL,
[Name] [NVARCHAR] (1000) NOT NULL,
[SpName] [VARCHAR] (255) NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_EmailProcessConfiguration_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_EmailProcessConfiguration_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_EmailProcessConfiguration_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_EmailProcessConfiguration_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_EmailProcessConfiguration_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_EmailProcessConfiguration_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL,
[ProcessID] [INT] NULL,
[ReportSPName] [VARCHAR] (255) NULL,
[EmailCategory] [INT] NULL,
[ReportTypeID] [INT] NULL,
[ReportModuleID] [INT] NULL,
[ReportGenTypeID] [INT] NULL
)
GO
PRINT N'Creating primary key [PK_EmailProcessConfiguration] on [dbo].[EmailProcessConfiguration]'
GO
ALTER TABLE [dbo].[EmailProcessConfiguration] ADD CONSTRAINT [PK_EmailProcessConfiguration] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating [dbo].[SmsConfiguration]'
GO
CREATE TABLE [dbo].[SmsConfiguration]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[Name] [NVARCHAR] (200) NOT NULL,
[Message] [NVARCHAR] (max) NOT NULL,
[Comments] [NVARCHAR] (4000) NULL,
[ModuleID] [INT] NULL,
[FormID] [INT] NULL,
[SmsCategory] [INT] NULL,
[Status] [INT] NOT NULL,
[FixedMobileNos] [NVARCHAR] (max) NULL,
[ProcessOwner] [VARCHAR] (500) NULL,
[SpName] [VARCHAR] (255) NULL,
[ProcessID] [INT] NULL,
[BacklogDays] [INT] NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_SmsConfiguration_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_SmsConfiguration_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_SmsConfiguration_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_SmsConfiguration_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_SmsConfiguration_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_SmsConfiguration_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_SmsConfiguration] on [dbo].[SmsConfiguration]'
GO
ALTER TABLE [dbo].[SmsConfiguration] ADD CONSTRAINT [PK_SmsConfiguration] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_SmsConfiguration] on [dbo].[SmsConfiguration]'
GO
CREATE NONCLUSTERED INDEX [IDX_SmsConfiguration] ON [dbo].[SmsConfiguration] ([Name], [Status])
GO
PRINT N'Creating [dbo].[SmsProcessConfiguration]'
GO
CREATE TABLE [dbo].[SmsProcessConfiguration]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[FormID] [INT] NULL,
[Name] [NVARCHAR] (1000) NOT NULL,
[SpName] [VARCHAR] (255) NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_SmsProcessConfiguration_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_SmsProcessConfiguration_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_SmsProcessConfiguration_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_SmsProcessConfiguration_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_SmsProcessConfiguration_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_SmsProcessConfiguration_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_SmsProcessConfiguration] on [dbo].[SmsProcessConfiguration]'
GO
ALTER TABLE [dbo].[SmsProcessConfiguration] ADD CONSTRAINT [PK_SmsProcessConfiguration] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating [dbo].[EmailProcessOwnerDetails]'
GO
CREATE TABLE [dbo].[EmailProcessOwnerDetails]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[EmailID] [INT] NULL,
[ProcessID] [INT] NULL,
[Name] [NVARCHAR] (500) NULL,
[ProcessName] [NVARCHAR] (500) NULL,
[TableName] [VARCHAR] (255) NOT NULL,
[RefColumn] [VARCHAR] (255) NULL,
[MainColumn] [VARCHAR] (255) NULL,
[ProcessOwnerColumn] [VARCHAR] (255) NOT NULL,
[ProcessOwnerType] [INT] NOT NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_EmailProcessOwnerDetails_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_EmailProcessOwnerDetails_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_EmailProcessOwnerDetails_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_EmailProcessOwnerDetails_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_EmailProcessOwnerDetails_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_EmailProcessOwnerDetails_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_EmailProcessOwnerDetails] on [dbo].[EmailProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[EmailProcessOwnerDetails] ADD CONSTRAINT [PK_EmailProcessOwnerDetails] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating [dbo].[SmsProcessOwnerDetails]'
GO
CREATE TABLE [dbo].[SmsProcessOwnerDetails]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[SmsID] [INT] NULL,
[Name] [NVARCHAR] (500) NOT NULL,
[TableName] [VARCHAR] (255) NOT NULL,
[RefColumn] [VARCHAR] (255) NULL,
[MainColumn] [VARCHAR] (255) NULL,
[ProcessOwnerColumn] [VARCHAR] (255) NOT NULL,
[ProcessOwnerType] [INT] NOT NULL,
[ProcessID] [INT] NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_SmsProcessOwnerDetails_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_SmsProcessOwnerDetails_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_SmsProcessOwnerDetails_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_SmsProcessOwnerDetails_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_SmsProcessOwnerDetails_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_SmsProcessOwnerDetails_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_SmsProcessOwnerDetails] on [dbo].[SmsProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[SmsProcessOwnerDetails] ADD CONSTRAINT [PK_SmsProcessOwnerDetails] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_SmsProcessOwnerDetails] on [dbo].[SmsProcessOwnerDetails]'
GO
CREATE NONCLUSTERED INDEX [IDX_SmsProcessOwnerDetails] ON [dbo].[SmsProcessOwnerDetails] ([SmsID], [Name])
GO
PRINT N'Creating [dbo].[ReminderConfiguration]'
GO
CREATE TABLE [dbo].[ReminderConfiguration]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_ReminderConfiguration_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_ReminderConfiguration_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_ReminderConfiguration_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_ReminderConfiguration_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_ReminderConfiguration_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_ReminderConfiguration_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL,
[StatusID] [INT] NOT NULL,
[BacklogDays] [INT] NULL,
[Comments] [NVARCHAR] (4000) NULL,
[Description] [VARCHAR] (4000) NULL,
[FormID] [INT] NULL,
[IsLinkReq] [BIT] NULL,
[ModuleID] [INT] NULL,
[Name] [VARCHAR] (200) NULL,
[ReminderAfter] [INT] NULL,
[ReminderAfterID] [INT] NULL,
[ReminderBefore] [INT] NULL,
[ReminderBeforeID] [INT] NULL,
[SnoozeMinutes] [INT] NULL,
[SpName] [VARCHAR] (300) NULL,
[Subject] [VARCHAR] (200) NULL,
[IsAlert] [BIT] NULL
)
GO
PRINT N'Creating primary key [PK_ReminderConfiguration] on [dbo].[ReminderConfiguration]'
GO
ALTER TABLE [dbo].[ReminderConfiguration] ADD CONSTRAINT [PK_ReminderConfiguration] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating [dbo].[ReminderUserConfiguration]'
GO
CREATE TABLE [dbo].[ReminderUserConfiguration]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[ReminderID] [INT] NULL,
[UserID] [INT] NOT NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_ReminderUserConfiguration_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_ReminderUserConfiguration_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_ReminderUserConfiguration_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_ReminderUserConfiguration_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_ReminderUserConfiguration_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_ReminderUserConfiguration_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_ReminderUserConfiguration] on [dbo].[ReminderUserConfiguration]'
GO
ALTER TABLE [dbo].[ReminderUserConfiguration] ADD CONSTRAINT [PK_ReminderUserConfiguration] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating [dbo].[SurveyResultDetails]'
GO
CREATE TABLE [dbo].[SurveyResultDetails]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[TrackingID] [BIGINT] NOT NULL,
[QuestionID] [BIGINT] NOT NULL,
[QuestionNo] [INT] NOT NULL,
[QuestionType] [INT] NULL,
[Answer] [NVARCHAR] (4000) NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_SurveyResultDetails_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_SurveyResultDetails_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_SurveyResultDetails_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_SurveyResultDetails_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_SurveyResultDetails_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_SurveyResultDetails_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_SurveyResultDetails] on [dbo].[SurveyResultDetails]'
GO
ALTER TABLE [dbo].[SurveyResultDetails] ADD CONSTRAINT [PK_SurveyResultDetails] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_SurveyResultDetails] on [dbo].[SurveyResultDetails]'
GO
CREATE NONCLUSTERED INDEX [IDX_SurveyResultDetails] ON [dbo].[SurveyResultDetails] ([TrackingID], [QuestionNo], [QuestionID])
GO
PRINT N'Creating [dbo].[SurveyTrackingDetails]'
GO
CREATE TABLE [dbo].[SurveyTrackingDetails]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[SurveyTypeID] [INT] NOT NULL,
[SurveyID] [BIGINT] NOT NULL,
[UserID] [BIGINT] NOT NULL,
[SessionID] [NVARCHAR] (200) NULL,
[StartDate] [DATETIME] NULL,
[EndDate] [DATETIME] NULL,
[QuestionsPerPage] [INT] NULL,
[IsRandomise] [BIT] NULL,
[NoOfQuestions] [INT] NULL,
[Duration] [INT] NULL,
[ResultTransferSP] [VARCHAR] (255) NULL,
[StatusID] [INT] NOT NULL,
[CompletedMinutes] [DECIMAL] (32, 2) NULL,
[PreviousCompletedMinutes] [DECIMAL] (32, 2) NULL,
[CompanyID] [INT] NOT NULL,
[CreatedBy] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL CONSTRAINT [DF_SurveyTrackingDetails_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NOT NULL,
[ModifiedDate] [DATETIME] NOT NULL CONSTRAINT [DF_SurveyTrackingDetails_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [DATETIME] NOT NULL,
[NotActive] [BIT] NOT NULL CONSTRAINT [DF_SurveyTrackingDetails_NotActive] DEFAULT ((0)),
[NotActiveDate] [DATETIME] NULL,
[NotActiveDateGMT] [DATETIME] NULL,
[NotActiveReason] [NVARCHAR] (100) NULL,
[IsDeleted] [BIT] NOT NULL CONSTRAINT [DF_SurveyTrackingDetails_IsDeleted] DEFAULT ((0)),
[DeletedBy] [INT] NULL,
[DeletedDate] [DATETIME] NULL,
[DeletedDateGMT] [DATETIME] NULL,
[DeleteReason] [NVARCHAR] (100) NULL,
[IsCurrentVersion] [BIT] NOT NULL CONSTRAINT [DF_SurveyTrackingDetails_IsCurrentVersion] DEFAULT ((1)),
[Version] [INT] NOT NULL CONSTRAINT [DF_SurveyTrackingDetails_Version] DEFAULT ((1)),
[VersionID] [INT] NULL,
[OrderBy] [INT] NOT NULL,
[ERPID] [VARCHAR] (25) NULL
)
GO
PRINT N'Creating primary key [PK_SurveyTrackingDetails] on [dbo].[SurveyTrackingDetails]'
GO
ALTER TABLE [dbo].[SurveyTrackingDetails] ADD CONSTRAINT [PK_SurveyTrackingDetails] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_SurveyTrackingDetails] on [dbo].[SurveyTrackingDetails]'
GO
CREATE NONCLUSTERED INDEX [IDX_SurveyTrackingDetails] ON [dbo].[SurveyTrackingDetails] ([SurveyTypeID], [SurveyID], [UserID], [StartDate])
GO
PRINT N'Creating [dbo].[EmailLastTriggerDate]'
GO
CREATE TABLE [dbo].[EmailLastTriggerDate]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[EmailID] [INT] NOT NULL,
[LastTriggerDate] [DATETIME] NOT NULL
)
GO
PRINT N'Creating primary key [PK_EmailLastTriggerDate] on [dbo].[EmailLastTriggerDate]'
GO
ALTER TABLE [dbo].[EmailLastTriggerDate] ADD CONSTRAINT [PK_EmailLastTriggerDate] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_EmailLastTriggerDate] on [dbo].[EmailLastTriggerDate]'
GO
CREATE NONCLUSTERED INDEX [IDX_EmailLastTriggerDate] ON [dbo].[EmailLastTriggerDate] ([EmailID], [LastTriggerDate])
GO
PRINT N'Creating [dbo].[spEmailTriggerUpdate]'
GO

CREATE PROCEDURE [dbo].[spEmailTriggerUpdate](@IN_EmailID INT, @IN_TriggerDate DATETIME)
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		BEGIN TRANSACTION trans_EmailTriggerUpdate
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50)

			IF EXISTS (SELECT 1 FROM EmailLastTriggerDate WHERE EmailID = @IN_EmailID) 
			BEGIN
				UPDATE EmailLastTriggerDate
				SET LastTriggerDate = @IN_TriggerDate
				WHERE EmailID = @IN_EmailID;
			END
			ELSE
			BEGIN
				INSERT INTO EmailLastTriggerDate (EmailID, LastTriggerDate) VALUES (@IN_EmailID, @IN_TriggerDate);
			END;

		COMMIT TRANSACTION trans_EmailTriggerUpdate
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION trans_EmailTriggerUpdate

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating trigger [dbo].[trgEmailTimeInsert] on [dbo].[EmailConfiguration]'
GO

CREATE TRIGGER trgEmailTimeInsert
ON EmailConfiguration FOR INSERT AS  
BEGIN
	SET NOCOUNT ON;

	DECLARE @UTCTime DATETIME = GETUTCDATE(),
					@GMTTime DATETIME = '',
					@BacklogDays INT = 0,
					@EmailID INT = 0,
					@UTCDATE DATETIME = ''

	SELECT @BacklogDays = ins.BacklogDays, @EmailID = ins.ReferenceID FROM INSERTED ins;

	IF ISNULL(@BacklogDays, 0) <> 0
	BEGIN
		SET @UTCDATE = DATEADD(DAY, CAST(CONCAT('-', @BacklogDays) AS INT), GETUTCDATE());
		SET @UTCDATE = CONVERT(VARCHAR(100), @UTCDATE, 111) + ' 00:00:00';
	END
	ELSE
		SET @UTCDATE = @UTCTime;

	EXEC spEmailTriggerUpdate @EmailID, @UTCDATE;

END
GO
PRINT N'Creating trigger [dbo].[trgEmailTimeUpdate] on [dbo].[EmailConfiguration]'
GO

CREATE TRIGGER trgEmailTimeUpdate
ON EmailConfiguration FOR UPDATE AS  
BEGIN
	SET NOCOUNT ON;

	DECLARE @UTCTime DATETIME = GETUTCDATE(),
			@GMTTime DATETIME = '',
			@BacklogDays INT = 0,
			@EmailID INT = 0,
			@TriggeredDate DATETIME = '',
			@UTCDATE DATETIME = '',
			@ConvertedDate DATETIME = '',
			@Date DATETIME = '',
			@UserID INT = 0

	SET @UserID = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1);
	SET @GMTTime = dbo.fn_GMTCalculation(@UserID);

	SELECT @BacklogDays = ins.BacklogDays, @EmailID = ins.ReferenceID FROM INSERTED ins;	
	SET @TriggeredDate = ISNULL((SELECT LastTriggerDate FROM EmailLastTriggerDate WHERE EmailID = @EmailID), '');
    
	IF @BacklogDays <> 0
	BEGIN
		IF ISNULL(@TriggeredDate, '') = ''
			SET @ConvertedDate = CONVERT(VARCHAR(10), GETUTCDATE(), 111);
		ELSE
			SET @ConvertedDate = CONVERT(VARCHAR(10), @TriggeredDate, 111);      
		
		SET @UTCDATE =  DATEADD(DAY, CAST(CONCAT('-', @BacklogDays) AS INT), GETUTCDATE()); 
    
		IF CONVERT(VARCHAR(10), @ConvertedDate, 111) < CONVERT(VARCHAR(10), @UTCDATE, 111) OR ISNULL(@TriggeredDate, '') = ''
		BEGIN
			SET @UTCDATE = CONVERT(VARCHAR(100), @UTCDATE, 111)+ ' 00:00:00';
		END
		ELSE
		BEGIN 
			SET @UTCDATE = @TriggeredDate;
		END
    
		EXEC spEmailTriggerUpdate @EmailID, @UTCDATE;
	END
	ELSE IF @TriggeredDate = ''
	BEGIN
		EXEC spEmailTriggerUpdate @EmailID, @UTCTime;
	END
END
GO
PRINT N'Creating [dbo].[EmailTransactionTracking]'
GO
CREATE TABLE [dbo].[EmailTransactionTracking]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[TrackingNo] [VARCHAR] (100) NOT NULL,
[EmailID] [INT] NULL,
[RefID] [BIGINT] NOT NULL,
[EmailName] [NVARCHAR] (500) NULL,
[RequestFrom] [VARCHAR] (100) NOT NULL,
[EmailTo] [NVARCHAR] (max) NOT NULL,
[Subject] [NVARCHAR] (1000) NOT NULL,
[MailContent] [NVARCHAR] (max) NULL,
[IsHtml] [BIT] NOT NULL,
[UserID] [INT] NULL,
[IPAddress] [VARCHAR] (100) NULL,
[SessionID] [VARCHAR] (200) NULL,
[SendDate] [DATETIME] NOT NULL,
[Comments] [NVARCHAR] (4000) NULL,
[Status] [INT] NOT NULL,
[ErrorCode] [VARCHAR] (100) NULL,
[ErrorMessage] [NVARCHAR] (4000) NULL,
[CreatedDate] [DATETIME] NOT NULL,
[ModifiedBy] [INT] NULL,
[ModifiedDate] [DATETIME] NULL,
[CompanyID] [INT] NOT NULL,
[EmailFrom] [NVARCHAR] (500) NULL,
[EmailFromName] [NVARCHAR] (500) NULL,
[EmailCC] [NVARCHAR] (max) NULL,
[EmailAttachments] [NVARCHAR] (max) NULL,
[RetryCount] [INT] NULL,
[FailureCount] [INT] NULL,
[ResendByID] [INT] NULL,
[ResendDate] [DATE] NULL,
[ResendComments] [NVARCHAR] (max) NULL,
[ReadDate] [DATETIME] NULL
)
GO
PRINT N'Creating primary key [PK_EmailTransactionTracking] on [dbo].[EmailTransactionTracking]'
GO
ALTER TABLE [dbo].[EmailTransactionTracking] ADD CONSTRAINT [PK_EmailTransactionTracking] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_EmailTransactionTracking] on [dbo].[EmailTransactionTracking]'
GO
CREATE NONCLUSTERED INDEX [IDX_EmailTransactionTracking] ON [dbo].[EmailTransactionTracking] ([TrackingNo], [EmailName], [RequestFrom])
GO
PRINT N'Creating trigger [dbo].[trgEmailTransactionTrackingUpdate] on [dbo].[EmailTransactionTracking]'
GO

CREATE TRIGGER trgEmailTransactionTrackingUpdate  
ON EmailTransactionTracking FOR UPDATE AS  
BEGIN
	DECLARE @EmailID BIGINT = 0, @RefID BIGINT = 0, @StatusID INT = 0, @SpName VARCHAR(500)

	SELECT @EmailID = ID.EmailID, @RefID = ID.RefID, @StatusID = ID.Status FROM INSERTED ID

	SET @SpName = ISNULL((SELECT 1 FROM EmailConfiguration WHERE ReferenceID = @EmailID), '');

	SELECT @SpName = CASE WHEN ISNULL(EC.SpName, '') = '' THEN ISNULL(PC.SpName, '') ELSE ISNULL(EC.SpName, '') END
	FROM EmailConfiguration EC
		LEFT JOIN EmailProcessConfiguration PC ON PC.ReferenceID = EC.ProcessID
	WHERE EC.ReferenceID = @EmailID;

	IF @SpName = 'spEmailMarEPushEmailList'
	BEGIN
		EXEC spMarEPushEmailStatusUpdate @RefID, @StatusID
	END
	ELSE IF @SpName = 'spEmailMarketingEPush'
	BEGIN
		EXEC spMarketingEPushStatusUpdate @RefID, @StatusID
	END

END
GO
PRINT N'Creating [dbo].[SmsLastTriggerDate]'
GO
CREATE TABLE [dbo].[SmsLastTriggerDate]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[SmsID] [INT] NOT NULL,
[LastTriggerDate] [DATETIME] NOT NULL
)
GO
PRINT N'Creating primary key [PK_SmsLastTriggerDate] on [dbo].[SmsLastTriggerDate]'
GO
ALTER TABLE [dbo].[SmsLastTriggerDate] ADD CONSTRAINT [PK_SmsLastTriggerDate] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_SmsLastTriggerDate] on [dbo].[SmsLastTriggerDate]'
GO
CREATE NONCLUSTERED INDEX [IDX_SmsLastTriggerDate] ON [dbo].[SmsLastTriggerDate] ([SmsID], [LastTriggerDate])
GO
PRINT N'Creating [dbo].[spSmsTriggerUpdate]'
GO

CREATE PROCEDURE [dbo].[spSmsTriggerUpdate](@IN_SmsID INT, @IN_TriggerDate DATETIME)
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		BEGIN TRANSACTION trans_SmsTriggerUpdate
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50)

			IF EXISTS (SELECT 1 FROM SmsLastTriggerDate WHERE SmsID = @IN_SmsID) 
			BEGIN
				UPDATE SmsLastTriggerDate
				SET LastTriggerDate = @IN_TriggerDate
				WHERE SmsID = @IN_SmsID;
			END
			ELSE
			BEGIN
				INSERT INTO SmsLastTriggerDate (SmsID, LastTriggerDate) VALUES (@IN_SmsID, @IN_TriggerDate);
			END;

		COMMIT TRANSACTION trans_SmsTriggerUpdate
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION trans_SmsTriggerUpdate

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating trigger [dbo].[trgSmsTimeInsert] on [dbo].[SmsConfiguration]'
GO

CREATE TRIGGER trgSmsTimeInsert
ON SmsConfiguration FOR INSERT AS  
BEGIN
	SET NOCOUNT ON;

	DECLARE @UTCTime DATETIME = GETUTCDATE(),
			@GMTTime DATETIME = '',
			@BacklogDays INT = 0,
			@SmsID INT = 0,
			@TriggeredDate DATETIME = '',
			@UTCDATE DATETIME = '',
			@ConvertedDate DATETIME = '',
			@UserID INT = 0

		IF @BacklogDays <> 0
		BEGIN
			SET @UTCDATE =  DATEADD(DAY, '-' + @BacklogDays, GETUTCDATE()); 
			SET @UTCDATE = CONVERT(VARCHAR(100), @UTCDATE, 111)+ ' 00:00:00';
		END
		ELSE
			SET @UTCDATE = @UTCTime;		

		EXEC spSmsTriggerUpdate @SmsID, @UTCDATE;

END
GO
PRINT N'Creating trigger [dbo].[trgSmsTimeUpdate] on [dbo].[SmsConfiguration]'
GO

CREATE TRIGGER trgSmsTimeUpdate
ON SmsConfiguration FOR UPDATE AS  
BEGIN
	SET NOCOUNT ON;

	DECLARE @UTCTime DATETIME = GETUTCDATE(),
			@GMTTime DATETIME = '',
			@BacklogDays INT = 0,
			@SmsID INT = 0,
			@TriggeredDate DATETIME = '',
			@UTCDATE DATETIME = '',
			@ConvertedDate DATETIME = '',
			@Date DATETIME = '',
			@UserID INT = 0

	SET @UserID = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = 'Revol'), 1);
	SET @GMTTime = dbo.fn_GMTCalculation(@UserID);

	SELECT @BacklogDays = ins.BacklogDays, @SmsID = ins.ReferenceID FROM INSERTED ins;	
	SET @TriggeredDate = ISNULL((SELECT LastTriggerDate FROM SmsLastTriggerDate WHERE SmsID = @SmsID), '');
    
	IF @BacklogDays <> 0
	BEGIN
		IF ISNULL(@TriggeredDate, '') = ''
			SET @ConvertedDate = CONVERT(VARCHAR(10), GETUTCDATE(), 111);
		ELSE
			SET @ConvertedDate = CONVERT(VARCHAR(10), @TriggeredDate, 111);      
		
		SET @UTCDATE =  DATEADD(DAY, '-' + @BacklogDays, GETUTCDATE()); 
    
		IF CONVERT(VARCHAR(10), @ConvertedDate, 111) < CONVERT(VARCHAR(10), @UTCDATE, 111) OR ISNULL(@TriggeredDate, '') = ''
		BEGIN
			SET @UTCDATE = CONVERT(VARCHAR(100), @UTCDATE, 111)+ ' 00:00:00';
		END
		ELSE
		BEGIN 
			SET @UTCDATE = @TriggeredDate;
		END
    
		EXEC spSmsTriggerUpdate @SmsID, @UTCDATE;
	END
	ELSE IF @TriggeredDate = ''
	BEGIN
		EXEC spSmsTriggerUpdate @SmsID, @UTCTime;
	END
END
GO
PRINT N'Creating [dbo].[fn_GetScheduleEmailData]'
GO

CREATE FUNCTION [dbo].[fn_GetScheduleEmailData](@IN_EmailID INT)        
RETURNS @EmailData TABLE (StartDate DATETIME, EndDate DATETIME)        
AS        
BEGIN        
  DECLARE @LastTriggerDate DATETIME = ISNULL((SELECT TOP 1 LastTriggerDate FROM EmailLastTriggerDate WHERE EmailID = @IN_EmailID), NULL),
					@ScheduleDate DATETIME,
					@ScheduleType INT = 0,
					@ScheduleTime VARCHAR(50),
					@MonthDays VARCHAR(1000) = 0,
					@WeekDays VARCHAR(1000) = 0,
					@ReportDays INT = 0,
					@ReportStartDate DATETIME,
					@ReportEndDate DATETIME,
					@ReportAvailable BIT = 0,
					@HistoryID BIGINT = 0
  
  DECLARE @ReportDates TABLE (ReferenceID BIGINT IDENTITY(1, 1) NOT NULL, ReportDate DATETIME)

	SELECT @ScheduleType = ISNULL(ScheduleTypeID, 0), @ScheduleTime = ISNULL(CONVERT(CHAR(5), ScheduleTime), ''), @MonthDays = ISNULL(MonthDays, ''),
		@WeekDays = ISNULL(WeekDays, ''), @ReportDays = ISNULL(ReportDays, 0)
	FROM EmailConfiguration EC
	WHERE EC.ReferenceID = @IN_EmailID AND EmailCategory = 3;

	SET @ReportEndDate = GETUTCDATE()
	SET @ScheduleDate = DATEADD(day, DATEDIFF(day, 0, GETDATE()), @ScheduleTime)

	SET @ScheduleDate = DATEADD(mi, DATEDIFF(mi, GETDATE(), GETUTCDATE()), @ScheduleDate)

	IF @ScheduleType = 2
	BEGIN
		IF @ReportEndDate >= @ScheduleDate AND (@LastTriggerDate IS NULL OR @ScheduleDate > @LastTriggerDate)
			SET @ReportAvailable = 1
	END
	ELSE IF @ScheduleType = 3
	BEGIN
		INSERT INTO @ReportDates (ReportDate)
		SELECT DATEADD(DAY, CAST('-' + CONVERT(VARCHAR(50), NumberID - 1) AS INT), @ScheduleDate)
		FROM CmnSequenceFeeder WHERE NumberID <= 7 
			AND (PATINDEX('%,' + CAST(DATEPART(dw, DATEADD(DAY, CAST('-' + CONVERT(VARCHAR(50), NumberID - 1) AS INT), @ScheduleDate)) AS VARCHAR(50)) + ',%', ',' +  @WeekDays + ',') > 0)

		IF EXISTS (SELECT 1 FROM @ReportDates WHERE @ReportEndDate >= ReportDate AND (@LastTriggerDate IS NULL OR ReportDate > @LastTriggerDate))
			SET @ReportAvailable = 1
	END
	ELSE IF @ScheduleType = 4
	BEGIN
		INSERT INTO @ReportDates (ReportDate)
		SELECT DATEADD(DAY, CAST('-' + CONVERT(VARCHAR(50), NumberID - 1) AS INT), @ScheduleDate)
		FROM CmnSequenceFeeder WHERE NumberID <= 31 
			AND (PATINDEX('%,' + CAST(DAY(DATEADD(DAY, CAST('-' + CONVERT(VARCHAR(50), NumberID - 1) AS INT), @ScheduleDate)) AS VARCHAR(50)) + ',%', ',' +  @MonthDays + ',') > 0)

		IF EXISTS (SELECT 1 FROM @ReportDates WHERE @ReportEndDate >= ReportDate AND (@LastTriggerDate IS NULL OR ReportDate > @LastTriggerDate))
			SET @ReportAvailable = 1
	END

	SET @ReportStartDate = DATEADD(DAY, CAST('-' + CONVERT(VARCHAR(50), @ReportDays) AS INT), @ReportEndDate);

	IF @ReportAvailable = 1
	BEGIN
		INSERT INTO @EmailData (StartDate, EndDate) VALUES (@ReportStartDate, @ReportEndDate);
	END
RETURN        
END
GO
PRINT N'Creating [dbo].[fn_GetReminderDate]'
GO

CREATE FUNCTION [dbo].[fn_GetReminderDate](@IN_ReminderID INT, @IN_ReminderDate DATETIME, @IN_IsUTC BIT)        
RETURNS DATETIME
AS
BEGIN
  DECLARE @ReminderDate DATETIME = @IN_ReminderDate,
					@ReminderAfter INT = 0,
					@ReminderAfterID INT = 0,
					@ReminderBefore INT = 0,
					@ReminderBeforeID INT = 0
  
  SELECT @ReminderAfter = ISNULL(ReminderAfter, 0), @ReminderAfterID = ISNULL(ReminderAfterID, 0), 
		@ReminderBefore = ISNULL(ReminderBefore, 0), @ReminderBeforeID = ISNULL(ReminderBeforeID, 0)
  FROM ReminderConfiguration WHERE ReferenceID = @IN_ReminderID;
	
	IF @IN_IsUTC = 0
		SET @ReminderDate = DATEADD(mi, DATEDIFF(mi, GETDATE(), GETUTCDATE()), @ReminderDate)

	IF @ReminderAfter > 0 
	BEGIN
      IF @ReminderAfterID = 1 
        SET @ReminderDate = DATEADD(DAY, @ReminderAfter, @ReminderDate);
      ELSE IF @ReminderAfterID = 2 
        SET @ReminderDate = DATEADD(HOUR, @ReminderAfter, @ReminderDate);
      ELSE
        SET @ReminderDate = DATEADD(MINUTE, @ReminderAfter, @ReminderDate);
  END
  ELSE IF @ReminderBefore > 0 
	BEGIN
      IF @ReminderBeforeID = 1
        SET @ReminderDate = DATEADD(DAY, (-1 * @ReminderBefore), @ReminderDate);
      ELSE IF @ReminderBeforeID = 2
        SET @ReminderDate = DATEADD(HOUR, (-1 * @ReminderBefore), @ReminderDate);
      ELSE
        SET @ReminderDate = DATEADD(MINUTE, (-1 * @ReminderBefore), @ReminderDate);
  END
RETURN @ReminderDate
END
GO
PRINT N'Creating [dbo].[spEmailEventOpenMail]'
GO

CREATE PROCEDURE [dbo].[spEmailEventOpenMail](@IN_EmailID INT)	
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		DECLARE @ErrorMessage NVARCHAR(2000),
						@ErrorSeverity NVARCHAR(50),
						@ErrorState NVARCHAR(50),
						@UTCTime DATETIME = GETUTCDATE(),
						@LastTriggerDate DATETIME = ISNULL((SELECT TOP 1 LastTriggerDate FROM EmailLastTriggerDate WHERE EmailID = @IN_EmailID), NULL); 

		;WITH CTE AS (
			SELECT ISNULL(TT.ReferenceID, 0) AS RefID, 0 AS MainID,
				ISNULL(TT.EmailDescription, '') AS EmailDescription, ISNULL(TT.Subject, '') AS EmailSubject, 
				ISNULL(CONVERT(VARCHAR(50), TT.EmailDate, 106), '') AS EmailDate, ISNULL(TT.OtherMails, '') AS FixedEmail,
				ISNULL(UC.OfficialEmail, '') AS EmailFrom, CONCAT(ISNULL(SD.FirstName, ''), (CASE WHEN ISNULL(SD.MiddleName, '') = '' THEN '' ELSE ' ' END), 
				ISNULL(SD.MiddleName, ''), (CASE WHEN ISNULL(SD.LastName, '') = '' THEN '' ELSE ' ' END), ISNULL(SD.LastName, '')) AS EmailFromName,
				ISNULL(SUBSTRING((SELECT ',' + ISNULL(EUC.OfficialEmail, '')
										FROM MstEmployeeDetails ED
											JOIN CmnUserContacts EUC ON EUC.Type = 1 AND EUC.TypeID = ED.ReferenceID AND EUC.IsDeleted = 0
										WHERE (PATINDEX('%,' + CAST(ED.ReferenceID AS VARCHAR(50)) + ',%', ',' + TT.Employees + ',') > 0)
											AND ISNULL(EUC.OfficialEmail, '') <> '' FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','nvarchar(max)'), 2, 20000000000), '') AS EmployeeEmails,
				ISNULL(SUBSTRING((SELECT ',' + ISNULL(CC.OfficialEmail, '')
										FROM MstClientContacts CC
										WHERE (PATINDEX('%,' + CAST(CC.ReferenceID AS VARCHAR(50)) + ',%', ',' + TT.ClientContacts + ',') > 0)
											AND ISNULL(CC.OfficialEmail, '') <> '' FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','nvarchar(max)'), 2, 20000000000), '') AS ClientEmails
			FROM EmailApplicationOpenMails TT
				LEFT JOIN MstEmployeeDetails SD ON SD.ReferenceID = TT.SenderID
				LEFT JOIN CmnUserContacts UC ON UC.Type = 1 AND UC.TypeID = SD.ReferenceID AND UC.IsDeleted = 0
			WHERE (@LastTriggerDate IS NULL OR @LastTriggerDate <= TT.CreatedDate)
				AND ISNULL(TT.IsDeleted, 0) = 0 AND ISNULL(TT.NotActive, 0) = 0 AND ISNULL(TT.IsCurrentVersion, 1) = 1
				AND NOT EXISTS (SELECT 1 FROM EmailTransactionTracking ETT WHERE ETT.EmailID = @IN_EmailID AND ETT.RefID = TT.ReferenceID)
		)
		SELECT RefID, MainID, EmailDescription, EmailSubject, EmailDate, EmailFrom, EmailFromName,
			ISNULL(FixedEmail, '') + ',' + ISNULL(EmployeeEmails, '') + ',' + ISNULL(ClientEmails, '') AS EmailList
		FROM CTE;

		EXEC spEmailTriggerUpdate @IN_EmailID, @UTCTime;
END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spEmailGetConfiguration]'
GO

CREATE PROCEDURE [dbo].[spEmailGetConfiguration]
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @ErrorMessage NVARCHAR(2000),
				@ErrorSeverity NVARCHAR(50),
				@ErrorState NVARCHAR(50)

		SELECT EC.ReferenceID AS EmailID, ISNULL(EC.Name, '') AS EmailName, ISNULL(EC.Subject, '') AS Subject, 
			CASE WHEN ISNULL(EC.IsHtml, 0) = 1 THEN ISNULL(EC.MailContentCk, '') ELSE ISNULL(EC.MailContent, '') END AS MailContent, 
			ISNULL(EC.IsHtml, 0) AS IsHtml, ISNULL(EC.FixedEmails, '') AS FixedEmails, ISNULL(EC.ProcessOwner, '') AS ProcessOwner, 
			ISNULL(EC.EmailCategory, 0) EmailCategory, ISNULL(EC.Designations, '') Designations, ISNULL(EC.Employees, '') Employees,
			CASE WHEN ISNULL(PC.SpName, '') <> '' THEN ISNULL(PC.SpName, '') ELSE ISNULL(EC.SpName, '') END AS SpName, 
			ISNULL(PC.ReportSPName, '') AS ReportSPName, ISNULL(EC.ReportTypeID, 0) ReportType,
			ISNULL(EC.EmailFrom, '') AS EmailFrom, ISNULL(EC.EmailFromName, '') AS EmailFromName,
			ISNULL(EC.EmailCC, '') AS EmailCC, ISNULL(EC.EmailAttachments, '') AS EmailAttachments,
			CASE WHEN ISNULL(PC.ReportTypeID, 0) = 0 THEN 1 ELSE ISNULL(PC.ReportTypeID, 0) END AS ReportTypeID,
			CASE WHEN ISNULL(PC.ReportGenTypeID, 0) = 0 THEN 1 ELSE ISNULL(PC.ReportGenTypeID, 0) END AS ReportGenerationType,
			ISNULL(PC.ReportModuleID, 0) AS ReportModuleID, ISNULL(EC.IsExternalApi, 0) AS IsExternalAPI, ISNULL(EC.ExternalApiID, 0) AS ExternalApiID
		FROM EmailConfiguration EC
			LEFT JOIN EmailProcessConfiguration PC ON PC.ReferenceID = EC.ProcessID
		WHERE EC.Status = 1
			AND ISNULL(EC.IsDeleted, 0) = 0 AND ISNULL(EC.NotActive, 0) = 0 AND ISNULL(EC.IsCurrentVersion, 1) = 1;
	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spEmailGetProcessOwnerEmails]'
GO

CREATE PROCEDURE [dbo].[spEmailGetProcessOwnerEmails](@IN_EmailID INT, @IN_RefID BIGINT, @IN_MainID BIGINT)
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@ProcessOwner VARCHAR(500) = '',
							@EmailList NVARCHAR(MAX) = '',
							@EmailAddress NVARCHAR(500) = '',
							@ProcessOwnerID VARCHAR(50) = '',
							@ProcessOwnerType INT = 0,
							@TableName VARCHAR(255) = '',
							@RefColumn VARCHAR(255) = '',
							@MainColumn VARCHAR(255) = '',
							@ProcessOwnerColumn VARCHAR(255) = '',
							@EmailOwnerID BIGINT = 0,
							@UserType INT = 0,
							@Query NVARCHAR(MAX) = '',
							@MinID INT = 0,
							@MaxID INT = 0

			DECLARE @ProcessOwnerIDList TABLE (ID INT IDENTITY(1, 1) NOT NULL, ProcessOwnerID VARCHAR(50))

			SELECT @ProcessOwner = ISNULL(ProcessOwner, '')
			FROM EmailConfiguration WHERE ReferenceID = @IN_EmailID;

			IF @ProcessOwner <> ''
			BEGIN
				INSERT INTO @ProcessOwnerIDList (ProcessOwnerID)
				SELECT items FROM dbo.fn_DataSplit(@ProcessOwner, ',');

				SELECT @MinID = MIN(ID), @MaxID = MAX(ID) FROM @ProcessOwnerIDList;

				WHILE @MinID <= @MaxID
				BEGIN
					SET @EmailAddress = '';
					SELECT @ProcessOwnerID = ProcessOwnerID FROM @ProcessOwnerIDList WHERE ID = @MinID;

					IF @ProcessOwnerID <> ''
					BEGIN
						SELECT @TableName = ISNULL(TableName, ''), @RefColumn = ISNULL(RefColumn, ''), @MainColumn = ISNULL(MainColumn, ''), 
							@ProcessOwnerColumn = ISNULL(ProcessOwnerColumn, ''), @ProcessOwnerType = ISNULL(ProcessOwnerType, 0)
						FROM EmailProcessOwnerDetails WHERE ReferenceID = @ProcessOwnerID;

						IF (@TableName <> '' AND @ProcessOwnerColumn <> '' AND (@RefColumn <> '' OR @MainColumn <> ''))
						BEGIN
							SET @EmailOwnerID = 0;
							SET @Query = 'SELECT @EmailOwner = ' + @ProcessOwnerColumn + ' FROM ' + @TableName + ' WHERE 1 = 1' +
								CASE WHEN @RefColumn <> '' THEN ' AND ' + @RefColumn + '=' + CONVERT(VARCHAR(50), @IN_RefID) ELSE '' END +
								CASE WHEN @MainColumn <> '' THEN ' AND ' + @MainColumn + '=' + CONVERT(VARCHAR(50), @IN_MainID) ELSE '' END;

							EXEC sp_executesql @Query, N'@EmailOwner BIGINT OUTPUT', @EmailOwnerID OUTPUT;

							IF ISNULL(@EmailOwnerID, 0) <> 0
							BEGIN
								IF @ProcessOwnerType = 5
								BEGIN
									SELECT @UserType = Type, @EmailOwnerID = TypeID
									FROM CmnUserDetails WHERE UserID = @EmailOwnerID;
    
									SET @ProcessOwnerType = CASE WHEN @UserType = 2 THEN 6 WHEN @UserType = 3 THEN 7 WHEN @UserType = 4 THEN 8 ELSE 1 END;
								END
    
								SET @EmailAddress = '';
								IF @ProcessOwnerType = 1 
								BEGIN
									SELECT @EmailAddress = OfficialEmail 
									FROM CmnUserContacts
									WHERE Type = 1 AND TypeID = @EmailOwnerID AND ISNULL(IsDeleted, 0) = 0;
								END
								ELSE IF @ProcessOwnerType = 2 
								BEGIN
									SELECT @EmailAddress = Email
									FROM MstClientDetails WHERE ReferenceID = @EmailOwnerID;
								END
								ELSE IF @ProcessOwnerType = 3 
								BEGIN
									SELECT @EmailAddress = Email
									FROM MstManufacturerDetails WHERE ReferenceID = @EmailOwnerID;
								END
								ELSE IF @ProcessOwnerType = 4 
								BEGIN
									SELECT @EmailAddress = Email
									FROM MstSupplierDetails WHERE ReferenceID = @EmailOwnerID;
								END
								ELSE IF @ProcessOwnerType = 6 
								BEGIN
									SELECT @EmailAddress = OfficialEmail 
									FROM MstClientContacts
									WHERE ReferenceID = @EmailOwnerID AND ISNULL(IsDeleted, 0) = 0;
								END
								ELSE IF @ProcessOwnerType = 7 
								BEGIN
									SELECT @EmailAddress = OfficialEmail 
									FROM MstManufacturerContacts
									WHERE ReferenceID = @EmailOwnerID AND ISNULL(IsDeleted, 0) = 0;
								END
								ELSE IF @ProcessOwnerType = 8
								BEGIN
									SELECT @EmailAddress = OfficialEmail 
									FROM MstSupplierContacts
									WHERE ReferenceID = @EmailOwnerID AND ISNULL(IsDeleted, 0) = 0;
								END
								ELSE IF @ProcessOwnerType = 9
								BEGIN
									SELECT @EmailAddress = OfficialEmail 
									FROM MstTestProviderContacts
									WHERE ReferenceID = @EmailOwnerID AND ISNULL(IsDeleted, 0) = 0;
								END
							END
						END
					END

					IF @EmailList <> '' AND @EmailAddress <> ''
						SET @EmailList = @EmailList + ',';

					SET @EmailList = @EmailList + @EmailAddress;

					SET @MinID = @MinID + 1;
				END
			END
			SELECT @EmailList AS EmailList;
	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spEmailGetRetryEmails]'
GO

CREATE PROCEDURE [dbo].[spEmailGetRetryEmails]
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @ErrorMessage NVARCHAR(2000),
				@ErrorSeverity NVARCHAR(50),
				@ErrorState NVARCHAR(50)

		SELECT ET.ReferenceID AS TransactionID, EC.ReferenceID AS EmailID, ET.RefID, ISNULL(ET.TrackingNo, '') AS TrackingNo,
			ISNULL(EC.Name, '') AS EmailName, ISNULL(ET.Subject, '') AS Subject, ISNULL(ET.MailContent, '') AS MailContent, 
			ISNULL(ET.IsHtml, 0) AS IsHtml, ISNULL(ET.EmailTo, '') AS EmailList, ISNULL(ET.EmailFrom, '') AS EmailFrom,
			ISNULL(ET.EmailFromName, '') AS EmailFromName, ISNULL(ET.EmailCC, '') AS EmailCC,
			ISNULL(ET.EmailAttachments, '') AS EmailAttachments
		FROM EmailTransactionTracking ET
			JOIN EmailConfiguration EC ON EC.ReferenceID = ET.EmailID AND EC.Status = 1 AND EC.IsDeleted = 0
		WHERE (ET.Status = 4
			OR (ET.Status = 3 AND ISNULL(ET.ErrorCode, '') <> 'E0066'
				AND ISNULL(ET.RetryCount, 0) > 0 AND ISNULL(ET.RetryCount, 0) >= ISNULL(ET.FailureCount, 0)));
	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spEmailProcessUpdate]'
GO

CREATE PROCEDURE [dbo].[spEmailProcessUpdate](@IN_Event VARCHAR(10), @IN_EmailID INT, @IN_FormID INT, @IN_UserID INT)
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		BEGIN TRANSACTION trans_EmailTriggerUpdate
			DECLARE @ErrorMessage NVARCHAR(2000),
					@ErrorSeverity NVARCHAR(50),
					@ErrorState NVARCHAR(50),
					@UTCTime DATETIME = GETUTCDATE(),
					@GMTTime DATETIME = dbo.fn_GMTCalculation(@IN_UserID),
					@Message VARCHAR(100) = '';

		  IF @IN_Event = 'ON'
		  BEGIN
			UPDATE EmailConfiguration SET Status = 1, ModifiedBy = @IN_UserID, ModifiedDate = @UTCTime, ModifiedDateGMT = @GMTTime WHERE ReferenceID = @IN_EmailID;    
			SET @Message = 'Successfully turn ON the email process';
		  END
		  ELSE
		  BEGIN
			UPDATE EmailConfiguration SET Status = 2, ModifiedBy = @IN_UserID, ModifiedDate = @UTCTime, ModifiedDateGMT = @GMTTime WHERE ReferenceID = @IN_EmailID;  
			SET @Message = 'Successfully turn OFF the email process';  
		  END

		  SELECT @Message;

		COMMIT TRANSACTION trans_EmailTriggerUpdate
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION trans_EmailTriggerUpdate

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spEmailTrackingEntry]'
GO

CREATE PROCEDURE [dbo].[spEmailTrackingEntry](@IN_TrackingNo VARCHAR(100), @IN_EmailID INT, @IN_RefID BIGINT, @IN_EmailName NVARCHAR(500), 
	@IN_RequestFrom VARCHAR(100), @IN_EmailTo NVARCHAR(MAX), @IN_Subject NVARCHAR(1000), @IN_MailContent NVARCHAR(MAX), 
	@IN_IsHtml BIT, @IN_EmailFrom NVARCHAR(500), @IN_EmailFromName NVARCHAR(500), @IN_EmailCC NVARCHAR(MAX),
	@IN_EmailAttachments NVARCHAR(MAX), @IN_UserID INT, @IN_IPAddress VARCHAR(100), @IN_SessionID VARCHAR(200))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		BEGIN TRANSACTION tran_EmailTrackingEntry
			DECLARE @ErrorMessage NVARCHAR(2000),
					@ErrorSeverity NVARCHAR(50),
					@ErrorState NVARCHAR(50),
					@UTCTime DATETIME = GETUTCDATE(),
					@CompanyID INT = 0,
					@RetryCount INT = 0

			SELECT @CompanyID = ISNULL(CompanyID, 0), @RetryCount = ISNULL(RetryCount, 0)
			FROM EmailConfiguration WHERE ReferenceID = @IN_EmailID;

			INSERT INTO EmailTransactionTracking (TrackingNo, EmailID, RefID, EmailName, RequestFrom, EmailTo,
				Subject, MailContent, IsHtml, EmailFrom, EmailFromName, EmailCC, EmailAttachments,
				UserID, IPAddress, SessionID, SendDate, Status, RetryCount, CompanyID, CreatedDate)
			SELECT @IN_TrackingNo, @IN_EmailID, @IN_RefID, @IN_EmailName, @IN_RequestFrom, @IN_EmailTo, @IN_Subject,
				@IN_MailContent, @IN_IsHtml, @IN_EmailFrom, @IN_EmailFromName, @IN_EmailCC, @IN_EmailAttachments,
				@IN_UserID, @IN_IPAddress, @IN_SessionID, @UTCTime, 1, @RetryCount, @CompanyID, @UTCTime;

		COMMIT TRANSACTION tran_EmailTrackingEntry
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION tran_EmailTrackingEntry

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spEmailTrackingStatusUpdate]'
GO

CREATE PROCEDURE [dbo].[spEmailTrackingStatusUpdate](@IN_TrackingNo VARCHAR(100), @IN_Status INT, @IN_ErrorCode VARCHAR(100), @IN_ErrorMessage NVARCHAR(MAX))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		BEGIN TRANSACTION tran_EmailTrackingStatusUpdate
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@UTCTime DATETIME = GETUTCDATE()

			UPDATE EmailTransactionTracking
			SET Status = @IN_Status,
				FailureCount = CASE WHEN @IN_Status = 3 THEN ISNULL(FailureCount, 0) + 1 ELSE FailureCount END,
				ErrorCode = @IN_ErrorCode,
				ErrorMessage = @IN_ErrorMessage,
				ModifiedDate = @UTCTime
			WHERE TrackingNo = @IN_TrackingNo;

		COMMIT TRANSACTION tran_EmailTrackingStatusUpdate
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION tran_EmailTrackingStatusUpdate

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spEmailUpdateReadStatus]'
GO

CREATE PROCEDURE [dbo].[spEmailUpdateReadStatus] (
	@IN_TrackingNo VARCHAR(100),
	@IN_EmailTo NVARCHAR(MAX)
)
AS
BEGIN
	SET NOCOUNT ON
	BEGIN TRY
		DECLARE @ErrorMessage NVARCHAR(2000),
			@ErrorSeverity NVARCHAR(50),
			@ErrorState NVARCHAR(50);

		UPDATE EmailTransactionTracking
		SET Status = 5,
			ReadDate = GETUTCDATE()
		WHERE TrackingNo = @IN_TrackingNo AND ISNULL(EmailTo, '') = @IN_EmailTo AND Status = 2;

	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE()
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH		
END
GO
PRINT N'Creating [dbo].[spSmsGetConfiguration]'
GO

CREATE PROCEDURE [dbo].[spSmsGetConfiguration]
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50)

			SELECT ReferenceID AS SmsID, ISNULL(Name, '') AS SmsName, ISNULL(Message, '') AS Message,
				ISNULL(FixedMobileNos, '') AS FixedMobileNos, ISNULL(ProcessOwner, '') AS ProcessOwner, ISNULL(SpName, '') AS SpName
			FROM SmsConfiguration
			WHERE Status = 1
				AND ISNULL(IsDeleted, 0) = 0 AND ISNULL(NotActive, 0) = 0 AND ISNULL(IsCurrentVersion, 1) = 1;
	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spSmsGetProcessOwnerMobileNo]'
GO

CREATE PROCEDURE [dbo].[spSmsGetProcessOwnerMobileNo](@IN_SmsID INT, @IN_RefID BIGINT, @IN_MainID BIGINT)
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@ProcessOwner VARCHAR(500) = '',
							@MobileNoList NVARCHAR(MAX) = '',
							@MobileNo NVARCHAR(500) = '',
							@ProcessOwnerID VARCHAR(50) = '',
							@ProcessOwnerType INT = 0,
							@TableName VARCHAR(255) = '',
							@RefColumn VARCHAR(255) = '',
							@MainColumn VARCHAR(255) = '',
							@ProcessOwnerColumn VARCHAR(255) = '',
							@ContactID BIGINT = 0,
							@UserType INT = 0,
							@Query NVARCHAR(MAX) = '',
							@MinID INT = 0,
							@MaxID INT = 0

			DECLARE @ProcessOwnerIDList TABLE (ID INT IDENTITY(1, 1) NOT NULL, ProcessOwnerID VARCHAR(50))

			SELECT @ProcessOwner = ISNULL(ProcessOwner, '')
			FROM SmsConfiguration WHERE ReferenceID = @IN_SmsID;

			IF @ProcessOwner <> ''
			BEGIN
				INSERT INTO @ProcessOwnerIDList (ProcessOwnerID)
				SELECT items FROM dbo.fn_DataSplit(@ProcessOwner, ',');

				SELECT @MinID = MIN(ID), @MaxID = MAX(ID) FROM @ProcessOwnerIDList;

				WHILE @MinID <= @MaxID
				BEGIN
					SET @MobileNo = '';
					SELECT @ProcessOwnerID = ProcessOwnerID FROM @ProcessOwnerIDList;

					IF @ProcessOwnerID <> ''
					BEGIN
						SELECT @TableName = ISNULL(TableName, ''), @RefColumn = ISNULL(RefColumn, ''), @MainColumn = ISNULL(MainColumn, ''), 
							@ProcessOwnerColumn = ISNULL(ProcessOwnerColumn, ''), @ProcessOwnerType = ISNULL(ProcessOwnerType, 0)
						FROM SmsProcessOwnerDetails WHERE ReferenceID = @ProcessOwnerID;

						IF (@TableName <> '' AND @ProcessOwnerColumn <> '' AND (@RefColumn <> '' OR @MainColumn <> ''))
						BEGIN
							SET @ContactID = 0;
							SET @Query = 'SELECT @EmailOwner = ' + @ProcessOwnerColumn + ' FROM ' + @TableName + ' WHERE 1 = 1' +
								CASE WHEN @RefColumn <> '' THEN ' AND ' + @RefColumn + '=' + @IN_RefID ELSE '' END +
								CASE WHEN @MainColumn <> '' THEN ' AND ' + @MainColumn + '=' + @IN_MainID ELSE '' END;

							EXEC sp_executesql @Query, N'@EmailOwner BIGINT OUTPUT', @ContactID OUTPUT;

							IF ISNULL(@ContactID, 0) <> 0
							BEGIN
								IF @ProcessOwnerType = 5
								BEGIN
									SELECT @UserType = Type, @ContactID = TypeID
									FROM CmnUserDetails WHERE UserID = @ContactID;
    
									SET @ProcessOwnerType = CASE WHEN @UserType = 2 THEN 6 WHEN @UserType = 3 THEN 7 WHEN @UserType = 4 THEN 8 ELSE 1 END;
								END
    
								SET @MobileNo = '';
								IF @ProcessOwnerType = 1 
								BEGIN
									SELECT @MobileNo = Mobile 
									FROM CmnUserContacts
									WHERE Type = 1 AND TypeID = @ContactID AND ISNULL(IsDeleted, 0) = 0;
								END
								ELSE IF @ProcessOwnerType = 2 
								BEGIN
									SELECT @MobileNo = Mobile
									FROM MstClientDetails WHERE ReferenceID = @ContactID;
								END
								ELSE IF @ProcessOwnerType = 3 
								BEGIN
									SELECT @MobileNo = Mobile
									FROM MstManufacturerDetails WHERE ReferenceID = @ContactID;
								END
								ELSE IF @ProcessOwnerType = 4 
								BEGIN
									SELECT @MobileNo = Mobile
									FROM MstSupplierDetails WHERE ReferenceID = @ContactID;
								END
								ELSE IF @ProcessOwnerType = 6 
								BEGIN
									SELECT @MobileNo = Mobile 
									FROM MstClientContacts
									WHERE ReferenceID = @ContactID AND ISNULL(IsDeleted, 0) = 0;
								END
								ELSE IF @ProcessOwnerType = 7 
								BEGIN
									SELECT @MobileNo = Mobile 
									FROM MstManufacturerContacts
									WHERE ReferenceID = @ContactID AND ISNULL(IsDeleted, 0) = 0;
								END
								ELSE IF @ProcessOwnerType = 8
								BEGIN
									SELECT @MobileNo = Mobile 
									FROM MstSupplierContacts
									WHERE ReferenceID = @ContactID AND ISNULL(IsDeleted, 0) = 0;
								END
								ELSE IF @ProcessOwnerType = 9
								BEGIN
									SELECT @MobileNo = Mobile 
									FROM MstTestProviderContacts
									WHERE ReferenceID = @ContactID AND ISNULL(IsDeleted, 0) = 0;
								END
							END
						END
					END

					IF @MobileNoList <> '' AND @MobileNo <> ''
						SET @MobileNoList = @MobileNoList + ',';

					SET @MobileNoList = @MobileNoList + @MobileNo;

					SET @MinID = @MinID + 1;
				END
			END
			SELECT @MobileNoList AS MobileNoList;
	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spSmsProcessUpdate]'
GO

CREATE PROCEDURE [dbo].[spSmsProcessUpdate](@IN_Event VARCHAR(10), @IN_SmsID INT, @IN_FormID INT, @IN_UserID INT)
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		BEGIN TRANSACTION trans_SmsTriggerUpdate
			DECLARE @ErrorMessage NVARCHAR(2000),
					@ErrorSeverity NVARCHAR(50),
					@ErrorState NVARCHAR(50),
					@UTCTime DATETIME = GETUTCDATE(),
					@GMTTime DATETIME = dbo.fn_GMTCalculation(@IN_UserID),
					@Message VARCHAR(100) = '';

		  IF @IN_Event = 'ON'
		  BEGIN
			UPDATE SmsConfiguration SET Status = 1, ModifiedBy = @IN_UserID, ModifiedDate = @UTCTime, ModifiedDateGMT = @GMTTime WHERE ReferenceID = @IN_SmsID;    
			SET @Message = 'Successfully turn ON the Sms process';
		  END
		  ELSE
		  BEGIN
			UPDATE SmsConfiguration SET Status = 2, ModifiedBy = @IN_UserID, ModifiedDate = @UTCTime, ModifiedDateGMT = @GMTTime WHERE ReferenceID = @IN_SmsID;  
			SET @Message = 'Successfully turn OFF the Sms process';  
		  END

		  SELECT @Message;

		COMMIT TRANSACTION trans_SmsTriggerUpdate
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION trans_SmsTriggerUpdate

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[SmsTransactionTracking]'
GO
CREATE TABLE [dbo].[SmsTransactionTracking]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[TrackingNo] [VARCHAR] (100) NOT NULL,
[SmsID] [INT] NULL,
[RefID] [BIGINT] NULL,
[SmsName] [NVARCHAR] (500) NULL,
[RequestFrom] [VARCHAR] (100) NOT NULL,
[MobileNo] [NVARCHAR] (500) NOT NULL,
[Message] [NVARCHAR] (max) NOT NULL,
[UserID] [INT] NULL,
[IPAddress] [VARCHAR] (100) NULL,
[SessionID] [VARCHAR] (200) NULL,
[SendDate] [DATETIME] NOT NULL,
[Comments] [NVARCHAR] (4000) NULL,
[Status] [INT] NOT NULL,
[ErrorCode] [VARCHAR] (100) NULL,
[ErrorMessage] [NVARCHAR] (4000) NULL,
[CreatedDate] [DATETIME] NOT NULL,
[ModifiedDate] [DATETIME] NULL,
[CompanyID] [INT] NOT NULL
)
GO
PRINT N'Creating primary key [PK_SmsTransactionTracking] on [dbo].[SmsTransactionTracking]'
GO
ALTER TABLE [dbo].[SmsTransactionTracking] ADD CONSTRAINT [PK_SmsTransactionTracking] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_SmsTransactionTracking] on [dbo].[SmsTransactionTracking]'
GO
CREATE NONCLUSTERED INDEX [IDX_SmsTransactionTracking] ON [dbo].[SmsTransactionTracking] ([TrackingNo], [SmsID], [RefID], [RequestFrom])
GO
PRINT N'Creating [dbo].[spSmsTrackingEntry]'
GO

CREATE PROCEDURE [dbo].[spSmsTrackingEntry](@IN_TrackingNo VARCHAR(100), @IN_SmsID INT, @IN_RefID BIGINT, @IN_SmsName NVARCHAR(500), 
	@IN_RequestFrom VARCHAR(100), @IN_MobileNo NVARCHAR(MAX), @IN_Message NVARCHAR(1000), @IN_UserID INT, @IN_IPAddress VARCHAR(100), @IN_SessionID VARCHAR(200))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		BEGIN TRANSACTION tran_SmsTrackingEntry
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@UTCTime DATETIME = GETUTCDATE(),
							@CompanyID INT = 0

			SELECT TOP 1 @CompanyID = CD.ReferenceID
			FROM MstCompanyDetails CD
			WHERE CD.ParentCompanyID IS NULL AND ISNULL(CD.IsDeleted, 0) = 0 AND ISNULL(CD.NotActive, 0) = 0 AND ISNULL(CD.IsCurrentVersion, 1) = 1
			ORDER BY CD.ReferenceID DESC;

			INSERT INTO SmsTransactionTracking (TrackingNo, SmsID, RefID, SmsName, RequestFrom, MobileNo, Message,
				UserID, IPAddress, SessionID, SendDate, Status, CompanyID, CreatedDate)
			SELECT @IN_TrackingNo, @IN_SmsID, @IN_RefID, @IN_SmsName, @IN_RequestFrom, EL.items, @IN_Message,
				@IN_UserID, @IN_IPAddress, @IN_SessionID, @UTCTime, 1, @CompanyID, @UTCTime
			FROM dbo.fn_DataSplit(@IN_MobileNo, ',') EL

		COMMIT TRANSACTION tran_SmsTrackingEntry
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION tran_SmsTrackingEntry

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spSmsTrackingStatusUpdate]'
GO

CREATE PROCEDURE [dbo].[spSmsTrackingStatusUpdate](@IN_TrackingNo VARCHAR(100), @IN_Status INT, @IN_ErrorCode VARCHAR(100), @IN_ErrorMessage NVARCHAR(MAX))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		BEGIN TRANSACTION tran_SmsTrackingStatusUpdate
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@UTCTime DATETIME = GETUTCDATE()

			UPDATE SmsTransactionTracking
			SET Status = @IN_Status,
				ErrorCode = @IN_ErrorCode,
				ErrorMessage = @IN_ErrorMessage,
				ModifiedDate = @UTCTime
			WHERE TrackingNo = @IN_TrackingNo;

		COMMIT TRANSACTION tran_SmsTrackingStatusUpdate
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION tran_SmsTrackingStatusUpdate

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[ReminderUserTracking]'
GO
CREATE TABLE [dbo].[ReminderUserTracking]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[TrackingID] [BIGINT] NULL,
[ReminderID] [INT] NULL,
[UserID] [INT] NOT NULL,
[ReminderTime] [DATETIME] NOT NULL,
[NextReminderTime] [DATETIME] NOT NULL,
[Status] [INT] NOT NULL,
[Comments] [VARCHAR] (4000) NULL,
[CreatedDate] [DATETIME] NOT NULL,
[ModifiedDate] [DATETIME] NULL,
[CompanyID] [INT] NOT NULL
)
GO
PRINT N'Creating primary key [PK_ReminderUserTracking] on [dbo].[ReminderUserTracking]'
GO
ALTER TABLE [dbo].[ReminderUserTracking] ADD CONSTRAINT [PK_ReminderUserTracking] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_ReminderUserTracking] on [dbo].[ReminderUserTracking]'
GO
CREATE NONCLUSTERED INDEX [IDX_ReminderUserTracking] ON [dbo].[ReminderUserTracking] ([TrackingID], [ReminderID], [ReminderTime])
GO
PRINT N'Creating [dbo].[spReminderDismise]'
GO

CREATE PROCEDURE [dbo].[spReminderDismise](@IN_UserReminderIds VARCHAR(4000), @IN_UserID INT, @IN_SessionID VARCHAR(200))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		BEGIN TRANSACTION tran_ReminderUpdateReadStatus
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@UTCTime DATETIME = GETUTCDATE(),
							@Message NVARCHAR(1000) = '',
							@LoginStatus INT = 0

			SET @LoginStatus = ISNULL((SELECT TOP 1 UserStatusID FROM CmnLoginHistory WHERE ISNULL(UserID, 0) = @IN_UserID AND ISNULL(SessionID, '') = @IN_SessionID 
													AND UserStatusID = 1 ORDER BY LoginTime DESC), 0);

			IF @IN_SessionID = ''
  			SET @Message = 'Invalid session';
			ELSE IF @LoginStatus <> 1
  			SET @Message = 'Invalid user';
			ELSE
			BEGIN
				UPDATE RUT
				SET Status = 5,
					Comments = CONCAT(ISNULL(Comments, ''), ' ', 'Dismised at ', CONVERT(VARCHAR(50), @UTCTime), '.'),
					ModifiedDate = @UTCTime
				FROM dbo.fn_DataSplit(@IN_UserReminderIds, ',') URI
					JOIN ReminderUserTracking RUT ON RUT.ReferenceID = CAST(URI.items AS BIGINT)
				WHERE ISNUMERIC(URI.items) = 1 AND RUT.Status IN (2, 3) AND RUT.UserID = @IN_UserID;
			END

			SELECT @Message AS Message;
		COMMIT TRANSACTION tran_ReminderUpdateReadStatus
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION tran_ReminderUpdateReadStatus

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spReminderGetConfiguration]'
GO

CREATE PROCEDURE [dbo].[spReminderGetConfiguration]
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50)

			SELECT RC.ReferenceID AS ReminderID, ISNULL(RC.Name, '') AS ReminderName, ISNULL(RC.SpName, '') AS SpName, 
				ISNULL(RC.Subject, '') AS Subject, ISNULL(RC.Description, '') AS Description
			FROM ReminderConfiguration RC
			WHERE RC.StatusID = 1
				AND ISNULL(RC.IsDeleted, 0) = 0 AND ISNULL(RC.NotActive, 0) = 0 AND ISNULL(RC.IsCurrentVersion, 1) = 1;
	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[ReminderTransactionTracking]'
GO
CREATE TABLE [dbo].[ReminderTransactionTracking]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[ReminderID] [INT] NULL,
[RefID] [BIGINT] NOT NULL,
[MainID] [BIGINT] NOT NULL,
[ReminderTime] [DATETIME] NOT NULL,
[Subject] [NVARCHAR] (1000) NOT NULL,
[Description] [NVARCHAR] (4000) NULL,
[Status] [INT] NOT NULL,
[CreatedDate] [DATETIME] NOT NULL,
[ModifiedDate] [DATETIME] NULL,
[CompanyID] [INT] NOT NULL
)
GO
PRINT N'Creating primary key [PK_ReminderTransactionTracking] on [dbo].[ReminderTransactionTracking]'
GO
ALTER TABLE [dbo].[ReminderTransactionTracking] ADD CONSTRAINT [PK_ReminderTransactionTracking] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_ReminderTransactionTracking] on [dbo].[ReminderTransactionTracking]'
GO
CREATE NONCLUSTERED INDEX [IDX_ReminderTransactionTracking] ON [dbo].[ReminderTransactionTracking] ([ReminderID], [RefID], [ReminderTime])
GO
PRINT N'Creating [dbo].[spReminderGetUserReminders]'
GO

CREATE PROCEDURE [dbo].[spReminderGetUserReminders] (@IN_IsFull BIT, @IN_UserID INT, @IN_SessionID VARCHAR(200))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@UTCTime DATETIME = GETUTCDATE()

			SELECT RC.ReferenceID AS ReminderID, RTT.ReferenceID AS TrackingID, RUT.ReferenceID AS UserReminderID, 
				ISNULL(RTT.Subject, '') AS Subject, ISNULL(RTT.Description, '') AS Description, 
				ISNULL(RC.SnoozeMinutes, 5) AS SnoozeMinutes, ISNULL(RC.ModuleID, 0) AS ModuleID, ISNULL(RC.FormID, 0) AS FormID, 
				ISNULL(FD.FormPath, '') AS FormPath, ISNULL(RC.IsLinkReq, 0) AS IsLinkReq, ISNULL(RC.IsAlert, 0) AS IsAlert,
        CASE WHEN RUT.Status = 4 THEN 1 ELSE RUT.Status END AS StatusID, RTT.RefID, RTT.MainID
			FROM ReminderUserTracking RUT
				JOIN ReminderTransactionTracking RTT ON RTT.ReferenceID = RUT.TrackingID AND RTT.ReminderID = RUT.ReminderID
				JOIN ReminderConfiguration RC ON RC.ReferenceID = RTT.ReminderID AND RC.ReferenceID = RUT.ReminderID
					AND ISNULL(RC.IsDeleted, 0) = 0 AND ISNULL(RC.NotActive, 0) = 0 AND ISNULL(RC.IsCurrentVersion, 1) = 1
				LEFT JOIN CmnCodeMaster MO ON MO.Type = 'Module' AND MO.CodemasterID = RC.ModuleID
					AND ISNULL(MO.IsDeleted, 0) = 0 AND ISNULL(MO.NotActive, 0) = 0 AND ISNULL(MO.IsCurrentVersion, 1) = 1
				LEFT JOIN CmnFormDetails FD ON FD.FormID = RC.FormID AND ISNULL(FD.IsDeleted, 0) = 0
			WHERE RUT.UserID = @IN_UserID 
				AND ((@IN_IsFull = 1 AND (RUT.Status IN (1, 2) OR (ISNULL(RC.IsAlert, 0) = 0 AND RUT.Status IN (3)))) OR (@IN_IsFull = 0 AND (RUT.Status = 1 OR (RUT.Status = 4 AND RUT.NextReminderTime <= @UTCTime))))
				AND RTT.Status IN (1) AND RC.StatusID = 1
			ORDER BY RUT.NextReminderTime;

			UPDATE RUT
			SET Status = 2,
				ModifiedDate = @UTCTime
			FROM ReminderUserTracking RUT
				JOIN ReminderTransactionTracking RTT ON RTT.ReferenceID = RUT.TrackingID AND RTT.ReminderID = RUT.ReminderID
				JOIN ReminderConfiguration RC ON RC.ReferenceID = RTT.ReminderID AND RC.ReferenceID = RUT.ReminderID
					AND ISNULL(RC.IsDeleted, 0) = 0 AND ISNULL(RC.NotActive, 0) = 0 AND ISNULL(RC.IsCurrentVersion, 1) = 1
			WHERE RUT.UserID = @IN_UserID 
				AND (RUT.Status = 1 OR (RUT.Status = 4 AND RUT.NextReminderTime <= @UTCTime))
				AND RTT.Status IN (1) AND RC.StatusID = 1;
	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spReminderSnooze]'
GO

CREATE PROCEDURE [dbo].[spReminderSnooze](@IN_UserReminderID BIGINT, @IN_SnoozeMinutes INT, @IN_UserID INT, @IN_SessionID VARCHAR(200))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		BEGIN TRANSACTION tran_ReminderSnooze
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@UTCTime DATETIME = GETUTCDATE(),
							@Message NVARCHAR(1000) = '',
							@LoginStatus INT = 0

			SET @LoginStatus = ISNULL((SELECT TOP 1 UserStatusID FROM CmnLoginHistory WHERE ISNULL(UserID, 0) = @IN_UserID AND ISNULL(SessionID, '') = @IN_SessionID 
													AND UserStatusID = 1 ORDER BY LoginTime DESC), 0);

			IF @IN_SessionID = ''
  			SET @Message = 'Invalid session';
			ELSE IF @LoginStatus <> 1
  			SET @Message = 'Invalid user';
			ELSE
			BEGIN
				UPDATE ReminderUserTracking
  			SET Status = 4,
					NextReminderTime = DATEADD(MINUTE, @IN_SnoozeMinutes, @UTCTime),
					Comments = CONCAT(ISNULL(Comments, ''), ' ', 'Snoozed ', CONVERT(VARCHAR(50), @IN_SnoozeMinutes), ' minutes at ', CONVERT(VARCHAR(50), @UTCTime), '.'),
  				ModifiedDate = @UTCTime
  			WHERE ReferenceID = @IN_UserReminderID AND Status IN (2, 3) AND UserID = @IN_UserID;
			END

			SELECT @Message AS Message;
		COMMIT TRANSACTION tran_ReminderSnooze
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION tran_ReminderSnooze

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spReminderTrackingEntry]'
GO

CREATE PROCEDURE [dbo].[spReminderTrackingEntry](@IN_ReminderID INT, @IN_RefID BIGINT, @IN_MainID BIGINT, @IN_ReminderTime DATETIME,
	@IN_Subject NVARCHAR(1000), @IN_Description NVARCHAR(4000), @IN_UserList VARCHAR(1000))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		BEGIN TRANSACTION tran_ReminderTrackingEntry
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@UTCTime DATETIME = GETUTCDATE(),
							@TrackingID BIGINT = 0,
							@CompanyID INT = ISNULL((SELECT CompanyID FROM ReminderConfiguration WHERE ReferenceID = @IN_ReminderID), 0)

			INSERT INTO ReminderTransactionTracking (ReminderID, RefID, MainID, ReminderTime, Subject, Description, Status, CreatedDate, ModifiedDate, CompanyID)
			VALUES (@IN_ReminderID, @IN_RefID, @IN_MainID, @IN_ReminderTime, @IN_Subject, @IN_Description, 1, @UTCTime, @UTCTime, @CompanyID);

			SET @TrackingID = IDENT_CURRENT('ReminderTransactionTracking');

			INSERT INTO ReminderUserTracking (TrackingID, ReminderID, UserID, ReminderTime, NextReminderTime, Status, CreatedDate, ModifiedDate, CompanyID)
			SELECT @TrackingID, @IN_ReminderID, CAST(EL.items AS INT), @IN_ReminderTime, @IN_ReminderTime, 1, @UTCTime, @UTCTime, @CompanyID
			FROM dbo.fn_DataSplit(@IN_UserList, ',') EL WHERE ISNUMERIC(EL.items) = 1;

			INSERT INTO ReminderUserTracking (TrackingID, ReminderID, UserID, ReminderTime, NextReminderTime, Status, CreatedDate, ModifiedDate, CompanyID)
			SELECT @TrackingID, UC.ReminderID, UC.UserID, @IN_ReminderTime, @IN_ReminderTime, 1, @UTCTime, @UTCTime, @CompanyID
			FROM ReminderUserConfiguration UC
			WHERE UC.ReminderID = @IN_ReminderID
				AND ISNULL(UC.IsDeleted, 0) = 0 AND ISNULL(UC.NotActive, 0) = 0 AND ISNULL(UC.IsCurrentVersion, 1) = 1
				AND NOT EXISTS (SELECT 1 FROM ReminderUserTracking UT WHERE UT.TrackingID = @TrackingID AND UT.ReminderID = UC.ReminderID
													AND UT.UserID = UC.UserID);

		COMMIT TRANSACTION tran_ReminderTrackingEntry
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION tran_ReminderTrackingEntry

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[ReminderLastTriggerDate]'
GO
CREATE TABLE [dbo].[ReminderLastTriggerDate]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[ReminderID] [INT] NOT NULL,
[LastTriggerDate] [DATETIME] NOT NULL
)
GO
PRINT N'Creating primary key [PK_ReminderLastTriggerDate] on [dbo].[ReminderLastTriggerDate]'
GO
ALTER TABLE [dbo].[ReminderLastTriggerDate] ADD CONSTRAINT [PK_ReminderLastTriggerDate] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_ReminderLastTriggerDate] on [dbo].[ReminderLastTriggerDate]'
GO
CREATE NONCLUSTERED INDEX [IDX_ReminderLastTriggerDate] ON [dbo].[ReminderLastTriggerDate] ([ReminderID], [LastTriggerDate])
GO
PRINT N'Creating [dbo].[spReminderTriggerUpdate]'
GO

CREATE PROCEDURE [dbo].[spReminderTriggerUpdate](@IN_ReminderID INT, @IN_TriggerDate DATETIME)
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		BEGIN TRANSACTION trans_ReminderTriggerUpdate
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50)

			IF EXISTS (SELECT 1 FROM ReminderLastTriggerDate WHERE ReminderID = @IN_ReminderID) 
			BEGIN
				UPDATE ReminderLastTriggerDate
				SET LastTriggerDate = @IN_TriggerDate
				WHERE ReminderID = @IN_ReminderID;
			END
			ELSE
			BEGIN
				INSERT INTO ReminderLastTriggerDate (ReminderID, LastTriggerDate) VALUES (@IN_ReminderID, @IN_TriggerDate);
			END;

		COMMIT TRANSACTION trans_ReminderTriggerUpdate
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION trans_ReminderTriggerUpdate

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spReminderUpdateReadStatus]'
GO

CREATE PROCEDURE [dbo].[spReminderUpdateReadStatus](@IN_UserReminderIds VARCHAR(4000), @IN_UserID INT, @IN_SessionID VARCHAR(200))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		BEGIN TRANSACTION tran_ReminderUpdateReadStatus
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@UTCTime DATETIME = GETUTCDATE()

			UPDATE RUT
			SET Status = 3,
				Comments = CONCAT(ISNULL(Comments, ''), ' ', 'Read at ', CONVERT(VARCHAR(50), @UTCTime), '.'),
				ModifiedDate = @UTCTime
			FROM dbo.fn_DataSplit(@IN_UserReminderIds, ',') URI
				JOIN ReminderUserTracking RUT ON RUT.ReferenceID = CAST(URI.items AS BIGINT)
			WHERE ISNUMERIC(URI.items) = 1 AND RUT.Status = 2 AND RUT.UserID = @IN_UserID;

		COMMIT TRANSACTION tran_ReminderUpdateReadStatus
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION tran_ReminderUpdateReadStatus

		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spSurveyGetQuestions]'
GO

CREATE PROCEDURE [dbo].[spSurveyGetQuestions] (
	@IN_TrackingID BIGINT,
	@IN_SurveyID BIGINT,
	@IN_PageNo INT, 
	@IN_FormID INT, 
	@IN_UserID INT, 
	@IN_SessionID VARCHAR(200))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@UTCTime DATETIME = GETUTCDATE(),
							@SurveyID BIGINT = 0,
							@UserID INT = 0,
							@SessionID VARCHAR(200) = '',
							@QuestionsPerPage INT = 0, 
							@NoOfQuestions INT = 0,
							@FromQuestionNo INT = 0,
							@ToQuestionNo INT = 0,
							@Message NVARCHAR(1000) = '',
							@Query NVARCHAR(MAX) = '',
							@QuestionTable VARCHAR(255) = '',
							@FkDelete BIT = 0,
							@FkNotActive BIT = 0,
							@FkVersion BIT = 0

		SELECT @SurveyID = SurveyID, @UserID = UserID, @SessionID = SessionID, 
			@NoOfQuestions = NoOfQuestions, @QuestionsPerPage = QuestionsPerPage
		FROM SurveyTrackingDetails
		WHERE ReferenceID = @IN_TrackingID AND StatusID IN (1, 2)

		IF @SurveyID <> @IN_SurveyID OR @UserID <> @IN_UserID OR @IN_SessionID <> @IN_SessionID
			SET @Message = 'Invalid survey';

		SELECT @Message AS Message;

		IF @IN_PageNo = 1
			SET @FromQuestionNo = 1
		ELSE
			SET @FromQuestionNo = ((@IN_PageNo - 1) * @QuestionsPerPage) + 1;
		SET @ToQuestionNo = @FromQuestionNo + @QuestionsPerPage - 1;

		IF @Message = '' AND @FromQuestionNo <= @NoOfQuestions
		BEGIN
			SELECT TOP 1 @QuestionTable = FC.FkTable, @FkDelete = FC.FkDelete, @FkNotActive = FC.FkNotActive, @FkVersion = FC.FkVersion
			FROM CmnFormControls FC JOIN CmnGroupBoxes GB ON FC.GroupID = GB.GroupID JOIN CmnFormTabs FT ON FT.TabID = GB.TabID 
			WHERE FT.FormID = @IN_FormID AND GB.CommonGroup = 0 AND FC.ControlType = 19
				AND FC.IsDeleted = 0 AND GB.IsDeleted = 0 AND FT.IsDeleted = 0
			ORDER BY FT.TabOrder, GB.GroupOrder, FC.ControlOrder;

			SET @Query = CONCAT('SELECT SR.QuestionNo AS QuestionNo, QD.Question AS Question, QD.Options AS Options,
					QD.IsMandatory AS IsMandatory, QD.QuestionType AS QuestionType, ISNULL(SR.Answer, '''') AS Answer
				FROM SurveyResultDetails SR JOIN ', @QuestionTable, ' QD ON QD.ReferenceID = SR.QuestionID AND QD.SurveyID = ', 
				@IN_SurveyID, ' AND QD.UserID = ', @IN_UserID,
				CASE WHEN @FkDelete = 1 THEN ' AND QD.IsDeleted = 0' ELSE '' END, CASE WHEN @FkNotActive = 1 THEN ' AND QD.NotActive = 0' ELSE '' END,
				CASE WHEN @FkVersion = 1 THEN ' AND QD.IsCurrentVersion = 1' ELSE '' END, ' WHERE SR.TrackingID = ', @IN_TrackingID, 
				' AND SR.IsDeleted = 0 AND SR.QuestionNo BETWEEN ', @FromQuestionNo, ' AND ', @ToQuestionNo, ' ORDER BY SR.QuestionNo;');
			EXEC sp_executesql @Query
		END
	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spSurveyPrepareQuestions]'
GO

CREATE PROCEDURE [dbo].[spSurveyPrepareQuestions] (
	@IN_SurveyID BIGINT,
	@IN_QuestionsPerPage INT, 
	@IN_NoOfQuestions INT, 
	@IN_FormID INT, 
	@IN_UserID INT,
	@IN_SessionID VARCHAR(200))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		--BEGIN TRANSACTION tran_SurveyTrackingEntry
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@GMTTime DATETIME = dbo.fn_GMTCalculation(@IN_UserID),
							@UTCTime DATETIME = GETUTCDATE(),
							@SurveyTypeID INT = 0,
							@QuestionsPerPage INT = 0, 
							@IsRandomise BIT = 0, 
							@NoOfQuestions INT = 0, 
							@Duration INT = 0,
							@TrackingID BIGINT = 0,
							@CompanyID INT = 0,
							@SurveyTable VARCHAR(255) = '',
							@QuestionTable VARCHAR(255) = '',
							@Message NVARCHAR(1000) = '',
							@Query NVARCHAR(MAX) = '',
							@QuestionsCount INT = 0,
							@FkDelete BIT = 0,
							@FkNotActive BIT = 0,
							@FkVersion BIT = 0,
							@OrderBy VARCHAR(100) = '',
							@ResultTransferSP VARCHAR(255) = ''

			SELECT @CompanyID = COALESCE(ED.CompanyID, UD.CompanyID, 0)
			FROM CmnUserDetails UD
				LEFT JOIN MstEmployeeDetails ED ON UD.[Type] = 1 AND UD.TypeID = ED.ReferenceID AND ISNULL(ED.IsDeleted, 0) = 0
			WHERE UD.UserID = @IN_UserID;

			IF @CompanyID = 0
				SET @CompanyID = ISNULL((SELECT TOP 1 ReferenceID FROM MstCompanyDetails WHERE ISNULL(ParentCompanyID, 0) = 0 AND IsDeleted = 0 AND NotActive = 0 AND IsCurrentVersion = 1 ORDER BY ReferenceID), 0);

			SELECT TOP 1 @SurveyTable = FC.FkTable
			FROM CmnFormControls FC JOIN CmnGroupBoxes GB ON FC.GroupID = GB.GroupID JOIN CmnFormTabs FT ON FT.TabID = GB.TabID 
			WHERE FT.FormID = @IN_FormID AND GB.CommonGroup = 1 AND FC.ControlType = 19
				AND FC.IsDeleted = 0 AND GB.IsDeleted = 0 AND FT.IsDeleted = 0
			ORDER BY FT.TabOrder, GB.GroupOrder, FC.ControlOrder;

			SELECT TOP 1 @QuestionTable = FC.FkTable, @FkDelete = FC.FkDelete, @FkNotActive = FC.FkNotActive, @FkVersion = FC.FkVersion
			FROM CmnFormControls FC JOIN CmnGroupBoxes GB ON FC.GroupID = GB.GroupID JOIN CmnFormTabs FT ON FT.TabID = GB.TabID 
			WHERE FT.FormID = @IN_FormID AND GB.CommonGroup = 0 AND FC.ControlType = 19
				AND FC.IsDeleted = 0 AND GB.IsDeleted = 0 AND FT.IsDeleted = 0
			ORDER BY FT.TabOrder, GB.GroupOrder, FC.ControlOrder;

			IF ISNULL(@SurveyTable, '') = '' OR ISNULL(@QuestionTable, '') = ''
				SET @Message = 'Invalid configuration';

			IF @Message = ''
			BEGIN
				SET @Query = CONCAT('SELECT TOP 1 @SurveyTypeID = TypeID, @QuestionsPerPage = QuestionsPerPage, @NoOfQuestions = NoOfQuestions, 
					@IsRandomise = IsRandomise, @Duration = Duration FROM ', @SurveyTable, 
					' WHERE ReferenceID = ', @IN_SurveyID, ' AND UserID = ', @IN_UserID);	
				EXEC sp_executesql @Query, N'@SurveyTypeID INT OUTPUT, @QuestionsPerPage INT OUTPUT, @NoOfQuestions INT OUTPUT, @IsRandomise BIT OUTPUT, @Duration INT OUTPUT', 
					@SurveyTypeID = @SurveyTypeID OUTPUT, @QuestionsPerPage = @QuestionsPerPage OUTPUT, @NoOfQuestions = @NoOfQuestions OUTPUT, 
					@IsRandomise = @IsRandomise OUTPUT, @Duration = @Duration OUTPUT 

				IF @QuestionsPerPage <> @IN_QuestionsPerPage OR @NoOfQuestions <> @IN_NoOfQuestions
					SET @Message = 'Invalid survey input';

				IF @Message = ''
				BEGIN
					SET @Query = CONCAT('SELECT @QuestionsCount = COUNT(1) FROM ', @QuestionTable, ' WHERE SurveyID = ', @IN_SurveyID, ' AND UserID = ', @IN_UserID,
						CASE WHEN @FkDelete = 1 THEN ' AND IsDeleted = 0' ELSE '' END, CASE WHEN @FkNotActive = 1 THEN ' AND NotActive = 0' ELSE '' END,
						CASE WHEN @FkVersion = 1 THEN ' AND IsCurrentVersion = 1' ELSE '' END);
					EXEC sp_executesql @Query, N'@QuestionsCount INT OUTPUT', @QuestionsCount = @QuestionsCount OUTPUT 

					IF ISNULL(@QuestionsCount, 0) = 0 OR ISNULL(@QuestionsCount, 0) < @NoOfQuestions
						SET @Message = 'Invalid question details';
				END
			END

			IF @Message = ''
			BEGIN
				SELECT TOP 1 @TrackingID = ReferenceID
				FROM SurveyTrackingDetails
				WHERE SurveyID = @IN_SurveyID AND UserID = @IN_UserID AND SurveyTypeID = @SurveyTypeID AND StatusID IN (1, 2)
					AND IsDeleted = 0 AND NotActive = 0 AND IsCurrentVersion = 1
				ORDER BY ReferenceID DESC;

				IF ISNULL(@TrackingID, 0) = 0
				BEGIN
					IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = @SurveyTable AND COLUMN_NAME = 'ResultTransferSP')
					BEGIN
						SET @Query = CONCAT('SELECT TOP 1 @ResultTransferSP = ResultTransferSP FROM ', @SurveyTable, 
							' WHERE ReferenceID = ', @IN_SurveyID, ' AND UserID = ', @IN_UserID);	
						EXEC sp_executesql @Query, N'@ResultTransferSP VARCHAR(255) OUTPUT', @ResultTransferSP = @ResultTransferSP OUTPUT
					END

					INSERT INTO SurveyTrackingDetails (SurveyTypeID, SurveyID, UserID, SessionID, StartDate, QuestionsPerPage, IsRandomise, 
						NoOfQuestions, Duration, ResultTransferSP, StatusID, OrderBy, CompanyID, Version, IsCurrentVersion, 
						IsDeleted, NotActive, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
					VALUES (@SurveyTypeID, @IN_SurveyID, @IN_UserID, @IN_SessionID, @UTCTime, @QuestionsPerPage, @IsRandomise, @NoOfQuestions, @Duration, 
						@ResultTransferSP, 1, ISNULL((SELECT COUNT(1) + 1 FROM SurveyTrackingDetails), 1), 
						@CompanyID, 1, 1, 0, 0, @IN_UserID, @UTCTime, @GMTTime, @IN_UserID, @UTCTime, @GMTTime);

					SET @TrackingID = IDENT_CURRENT('SurveyTrackingDetails');

					IF @IsRandomise = 1
						SET @OrderBy = 'NEWID()';
					ELSE 
						SET @OrderBy = 'QuestionNo';

					SET @Query = CONCAT('INSERT INTO SurveyResultDetails (TrackingID, QuestionID, QuestionNo, QuestionType, OrderBy, CompanyID, Version, IsCurrentVersion, 
							IsDeleted, NotActive, CreatedBy, CreatedDate, CreatedDateGMT, ModifiedBy, ModifiedDate, ModifiedDateGMT)
						 SELECT ', @TrackingID, ', ReferenceID, ROW_NUMBER() OVER(ORDER BY ', @OrderBy, '), QuestionType, ISNULL((SELECT COUNT(1) + 1 FROM SurveyResultDetails), 1),',
							@CompanyID, ', 1, 1, 0, 0, ', @IN_UserID, ', ''', @UTCTime, ''', ''', @GMTTime, ''', ', @IN_UserID, ', ''', @UTCTime, ''', ''', @GMTTime, '''',
						' FROM ', @QuestionTable, ' WHERE SurveyID = ', @IN_SurveyID, ' AND UserID = ', @IN_UserID,
							CASE WHEN @FkDelete = 1 THEN ' AND IsDeleted = 0' ELSE '' END, CASE WHEN @FkNotActive = 1 THEN ' AND NotActive = 0' ELSE '' END,
							CASE WHEN @FkVersion = 1 THEN ' AND IsCurrentVersion = 1' ELSE '' END, ' AND QuestionNo <= ', @NoOfQuestions);

					EXEC sp_executesql @Query;
				END
				ELSE
				BEGIN
					UPDATE SurveyTrackingDetails
					SET SessionID = @IN_SessionID,
						PreviousCompletedMinutes = ISNULL(PreviousCompletedMinutes, 0) + ISNULL(CompletedMinutes, 0)
					WHERE ReferenceID = @TrackingID;
				END
			END

			SELECT @TrackingID AS TrackingID, @Message AS Message;
		--COMMIT TRANSACTION tran_SurveyTrackingEntry
	END TRY
	BEGIN CATCH
		--ROLLBACK TRANSACTION tran_SurveyTrackingEntry
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spSurveySubmit]'
GO

CREATE PROCEDURE [dbo].[spSurveySubmit] (
	@IN_TrackingID BIGINT,
	@IN_SurveyID BIGINT,
	@IN_FormID INT, 
	@IN_UserID INT,
	@IN_SessionID VARCHAR(200))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		--BEGIN TRANSACTION tran_SurveySubmit
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@GMTTime DATETIME = dbo.fn_GMTCalculation(@IN_UserID),
							@UTCTime DATETIME = GETUTCDATE(),
							@SurveyID BIGINT = 0,
							@UserID INT = 0,
							@SessionID VARCHAR(200) = '',
							@Message NVARCHAR(1000) = '',
							@Query NVARCHAR(MAX) = '',
							@ResultTransferSP VARCHAR(255) = ''

			SELECT @SurveyID = SurveyID, @UserID = UserID, @SessionID = SessionID, @ResultTransferSP = ResultTransferSP
			FROM SurveyTrackingDetails
			WHERE ReferenceID = @IN_TrackingID AND StatusID IN (1, 2);

			IF @SurveyID <> @IN_SurveyID OR @UserID <> @IN_UserID OR @IN_SessionID <> @IN_SessionID
				SET @Message = 'Invalid survey';

			IF @Message = ''
			BEGIN
				UPDATE SurveyTrackingDetails
				SET StatusID = 3, -- Submitted
					EndDate = @UTCTime,
					ModifiedBy = @IN_UserID,
					ModifiedDate = @UTCTime,
					ModifiedDateGMT = @GMTTime
				WHERE ReferenceID = @IN_TrackingID AND StatusID IN (1, 2);
			END

			SELECT @Message AS Message;
			IF @Message = '' AND ISNULL(@ResultTransferSP, '') <> ''
			BEGIN
				SET @Query = CONCAT('EXEC ', @ResultTransferSP, ' ', @IN_TrackingID, ', ', @IN_SurveyID, ', ', @IN_UserID, ', ''', @IN_SessionID, '''');

				EXEC sp_executesql @Query

				UPDATE SurveyTrackingDetails
				SET StatusID = 4, -- Transffered
					ModifiedBy = @IN_UserID,
					ModifiedDate = @UTCTime,
					ModifiedDateGMT = @GMTTime
				WHERE ReferenceID = @IN_TrackingID AND StatusID = 3;
			END
		--COMMIT TRANSACTION tran_SurveySubmit
	END TRY
	BEGIN CATCH
		--ROLLBACK TRANSACTION tran_SurveySubmit
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spSurveyUpdateAnswer]'
GO

CREATE PROCEDURE [dbo].[spSurveyUpdateAnswer] (
	@IN_TrackingID BIGINT,
	@IN_SurveyID BIGINT,
	@IN_QuestionNo INT, 
	@IN_Answer NVARCHAR(4000),
	@IN_CompletedMinutes DECIMAL(32, 2),
	@IN_FormID INT, 
	@IN_UserID INT,
	@IN_SessionID VARCHAR(200))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
		--BEGIN TRANSACTION tran_SurveyUpdateAnswer
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@GMTTime DATETIME = dbo.fn_GMTCalculation(@IN_UserID),
							@UTCTime DATETIME = GETUTCDATE(),
							@SurveyID BIGINT = 0,
							@UserID INT = 0,
							@SessionID VARCHAR(200) = '',
							@Message NVARCHAR(1000) = ''

			SELECT @SurveyID = SurveyID, @UserID = UserID, @SessionID = SessionID
			FROM SurveyTrackingDetails
			WHERE ReferenceID = @IN_TrackingID AND StatusID IN (1, 2);

			IF @SurveyID <> @IN_SurveyID OR @UserID <> @IN_UserID OR @IN_SessionID <> @IN_SessionID
				SET @Message = 'Invalid survey';

			IF @Message = ''
			BEGIN
				UPDATE SurveyResultDetails
				SET Answer = @IN_Answer,
					ModifiedBy = @IN_UserID,
					ModifiedDate = @UTCTime,
					ModifiedDateGMT = @GMTTime
				WHERE TrackingID = @IN_TrackingID AND QuestionNo = @IN_QuestionNo AND IsDeleted = 0;

				UPDATE SurveyTrackingDetails
				SET StatusID = CASE WHEN StatusID = 1 THEN 2 ELSE StatusID END, -- Inprogress
					CompletedMinutes = @IN_CompletedMinutes,
					ModifiedBy = @IN_UserID,
					ModifiedDate = @UTCTime,
					ModifiedDateGMT = @GMTTime
				WHERE ReferenceID = @IN_TrackingID;
			END

			SELECT @Message AS Message;
		--COMMIT TRANSACTION tran_SurveyUpdateAnswer
	END TRY
	BEGIN CATCH
		--ROLLBACK TRANSACTION tran_SurveyUpdateAnswer
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[viewReminderUserConfiguration]'
GO

CREATE VIEW [dbo].[viewReminderUserConfiguration]
AS
	SELECT ISNULL(RUC.ReferenceID, 0) AS ReferenceID, CASE WHEN ISNULL(RUC.ReferenceID, 0) <> 0 THEN 1 ELSE 0 END AS IsSelected, 
    ISNULL(RC.ReferenceID, 0) AS ReminderID, UD.UserID AS UserID, UD.Username AS UserName, ISNULL(UD.Type, 0) AS UserTypeID, 
    ISNULL(CM.TypeValues, '') AS Type, ISNULL(ED.ReferenceID, 0) AS EmployeeID, 
    CASE WHEN ISNULL(ED.NickName, '') = '' THEN UD.Username ELSE ISNULL(ED.NickName, '') END AS NickName, 
    ISNULL(UD.RoleID, 0) AS RoleID,  ISNULL((SELECT STRING_AGG(UR.TypeValues, ', ') FROM CmnCodeMaster UR WHERE UR.Type = 'Roles' 
				 AND PATINDEX(CONCAT('%,', CAST(UR.CodemasterID AS VARCHAR(50)), ',%'), CONCAT(',', UD.RoleID, ',')) > 0), '') AS Role,
    ISNULL(ED.DesignationID, 0) AS DesignationID, ISNULL(DES.TypeValues, '') AS Designation, UD.OrderBy AS OrderBy
  FROM CmnUserDetails UD
    JOIN ReminderConfiguration RC ON 1 = 1
    LEFT JOIN ReminderUserConfiguration RUC ON RUC.ReminderID = RC.ReferenceID AND RUC.UserID = UD.UserID
      AND ISNULL(RUC.IsDeleted, 0) = 0 AND ISNULL(RUC.NotActive, 0) = 0 AND ISNULL(RUC.IsCurrentVersion, 1) = 1
    LEFT JOIN CmnCodeMaster CM ON CM.Type = 'Company Type' AND CM.CodemasterID = UD.Type AND CM.IsDeleted = 0
    LEFT JOIN CmnCodeMaster CA ON CA.Type = 'Authentication Type' AND CA.CodemasterID = UD.AuthenticationType AND CA.IsDeleted = 0
    --LEFT JOIN CmnCodeMaster RL ON RL.Type = 'Roles' AND RL.CodemasterID = UD.RoleID AND RL.IsDeleted = 0
    LEFT JOIN MstEmployeeDetails ED ON UD.Type = 1 AND ED.ReferenceID = UD.TypeID
    LEFT JOIN CmnCodeMaster DES ON DES.Type = 'Company Designation' AND DES.CodemasterID = ED.DesignationID AND DES.IsDeleted = 0
  WHERE ISNULL(UD.IsDeleted, 0) = 0
		AND ISNULL(ED.IsDeleted, 0) = 0 AND ISNULL(ED.NotActive, 0) = 0 AND ISNULL(ED.IsCurrentVersion, 1) = 1
  UNION ALL
  SELECT ISNULL(RUC.ReferenceID, 0) AS ReferenceID, CASE WHEN ISNULL(RUC.ReferenceID, 0) <> 0 THEN 1 ELSE 0 END AS IsSelected, 
    ISNULL(RC.ReferenceID, 0) AS ReminderID, UD.UserID AS UserID, UD.Username AS UserName, ISNULL(UD.Type, 0) AS UserTypeID, 
    ISNULL(CM.TypeValues, '') AS Type, ISNULL(ED.ReferenceID, 0) AS EmployeeID, 
    CASE WHEN ISNULL(ED.NickName, '') = '' THEN UD.Username ELSE ISNULL(ED.NickName, '') END AS NickName, 
    ISNULL(UD.RoleID, 0) AS RoleID, ISNULL((SELECT STRING_AGG(UR.TypeValues, ', ') FROM CmnCodeMaster UR WHERE UR.Type = 'Roles' 
				 AND PATINDEX(CONCAT('%,', CAST(UR.CodemasterID AS VARCHAR(50)), ',%'), CONCAT(',', UD.RoleID, ',')) > 0), '') AS Role,
    ISNULL(ED.DesignationID, 0) AS DesignationID, ISNULL(DES.TypeValues, '') AS Designation, UD.OrderBy AS OrderBy
  FROM CmnUserDetails UD
    LEFT JOIN ReminderConfiguration RC ON 1 = 2
    LEFT JOIN ReminderUserConfiguration RUC ON RUC.ReminderID = RC.ReferenceID AND RUC.UserID = UD.UserID
      AND ISNULL(RUC.IsDeleted, 0) = 0 AND ISNULL(RUC.NotActive, 0) = 0 AND ISNULL(RUC.IsCurrentVersion, 1) = 1
    LEFT JOIN CmnCodeMaster CM ON CM.Type = 'Company Type' AND CM.CodemasterID = UD.Type AND CM.IsDeleted = 0
    LEFT JOIN CmnCodeMaster CA ON CA.Type = 'Authentication Type' AND CA.CodemasterID = UD.AuthenticationType AND CA.IsDeleted = 0
    --LEFT JOIN CmnCodeMaster RL ON RL.Type = 'Roles' AND PATINDEX(CONCAT('%,', CAST(RL.CodemasterID AS VARCHAR(50)), ',%'), CONCAT(',', UD.RoleID, ',')) > 0 AND RL.IsDeleted = 0
    LEFT JOIN MstEmployeeDetails ED ON UD.Type = 1 AND ED.ReferenceID = UD.TypeID
    LEFT JOIN CmnCodeMaster DES ON DES.Type = 'Company Designation' AND DES.CodemasterID = ED.DesignationID AND DES.IsDeleted = 0
  WHERE ISNULL(UD.IsDeleted, 0) = 0
		AND ISNULL(ED.IsDeleted, 0) = 0 AND ISNULL(ED.NotActive, 0) = 0 AND ISNULL(ED.IsCurrentVersion, 1) = 1
GO
PRINT N'Creating [dbo].[EmailSchedulerHistory]'
GO
CREATE TABLE [dbo].[EmailSchedulerHistory]
(
[ReferenceID] [BIGINT] NOT NULL IDENTITY(1, 1),
[EmailID] [INT] NULL,
[StartDate] [DATETIME] NULL,
[EndDate] [DATETIME] NULL
)
GO
PRINT N'Creating primary key [PK_EmailSchedulerHistory] on [dbo].[EmailSchedulerHistory]'
GO
ALTER TABLE [dbo].[EmailSchedulerHistory] ADD CONSTRAINT [PK_EmailSchedulerHistory] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating [dbo].[ViewEmailProcessConfigTables]'
GO

CREATE VIEW [dbo].[ViewEmailProcessConfigTables]
AS	

	SELECT TABLE_NAME AS TableName FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME <> 'CmnFileUpload';

GO
PRINT N'Creating [dbo].[spEmailApiIntegration]'
GO

CREATE PROCEDURE [dbo].[spEmailApiIntegration] (@IN_ApiIntegrationID INT)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @ErrorMessage NVARCHAR(2000),
				@ErrorSeverity NVARCHAR(50),
				@ErrorState NVARCHAR(50)

		SELECT ISNULL(AI.Code, '') AS Code,
			ISNULL(AI.Name, '') AS ApiName,
			ISNULL(AI.ApiLink, '') AS ApiLink,
			ISNULL(AI.Payload, '') AS PayLoad,
			ISNULL(AI.IsAuthorization, 0) AS IsAuthorization,
			ISNULL(AI.ContentTypeID, 0) AS ContentTypeID
		FROM AdmApiIntegration AI
		WHERE AI.ReferenceID = @IN_ApiIntegrationID AND ISNULL(AI.IsDeleted, 0) = 0 AND ISNULL(AI.NotActive, 0) = 0 AND ISNULL(AI.IsCurrentVersion, 1) = 1;

		SELECT ISNULL(AH.Header, '') AS HeaderName,
			ISNULL(AH.Value, '') AS HeaderValue
		FROM AdmApiIntegration AI
			JOIN AdmApiHeaderDetails AH ON AH.ApiIntegrationID = AI.ReferenceID
		WHERE AI.ReferenceID = @IN_ApiIntegrationID AND ISNULL(AI.IsDeleted, 0) = 0 AND ISNULL(AI.NotActive, 0) = 0 AND ISNULL(AI.IsCurrentVersion, 1) = 1;
	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[spEmailGetEmployeeEmails]'
GO

CREATE PROCEDURE [dbo].[spEmailGetEmployeeEmails](@IN_EmailID INT, @IN_Designations VARCHAR(4000), @IN_Employees VARCHAR(MAX))
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRY
			DECLARE @ErrorMessage NVARCHAR(2000),
							@ErrorSeverity NVARCHAR(50),
							@ErrorState NVARCHAR(50),
							@EmailList NVARCHAR(MAX) = ''

			SET @EmailList = ISNULL(SUBSTRING((SELECT ',' + ISNULL(UC.OfficialEmail, '')
								FROM MstEmployeeDetails ED
									JOIN CmnUserContacts UC ON UC.Type = 1 AND UC.TypeID = ED.ReferenceID AND UC.IsDeleted = 0
								WHERE ISNULL(UC.OfficialEmail, '') <> ''
									AND (@IN_Designations = '' OR (PATINDEX('%,' + CAST(ED.DesignationID AS VARCHAR(50)) + ',%', ',' + @IN_Designations + ',') > 0))
									AND (@IN_Employees = '' OR (PATINDEX('%,' + CAST(ED.ReferenceID AS VARCHAR(50)) + ',%', ',' + @IN_Employees + ',') > 0))
									AND ISNULL(ED.IsDeleted, 0) = 0 AND ISNULL(ED.NotActive, 0) = 0 AND ISNULL(ED.IsCurrentVersion, 1) = 1
									FOR XML PATH(''), ROOT('MyString'), TYPE).value('/MyString[1]','nvarchar(max)'), 2, 20000000000), '');
			
			SELECT ISNULL(@EmailList, '') AS EmailList;
	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO

