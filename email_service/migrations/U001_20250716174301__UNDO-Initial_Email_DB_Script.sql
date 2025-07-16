SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping constraints from [dbo].[EmailApplicationOpenMails]'
GO
ALTER TABLE [dbo].[EmailApplicationOpenMails] DROP CONSTRAINT [PK_EmailApplicationOpenMails]
GO
PRINT N'Dropping constraints from [dbo].[EmailConfiguration]'
GO
ALTER TABLE [dbo].[EmailConfiguration] DROP CONSTRAINT [PK_EmailConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[EmailLastTriggerDate]'
GO
ALTER TABLE [dbo].[EmailLastTriggerDate] DROP CONSTRAINT [PK_EmailLastTriggerDate]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessConfiguration]'
GO
ALTER TABLE [dbo].[EmailProcessConfiguration] DROP CONSTRAINT [PK_EmailProcessConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[EmailProcessOwnerDetails] DROP CONSTRAINT [PK_EmailProcessOwnerDetails]
GO
PRINT N'Dropping constraints from [dbo].[EmailSchedulerHistory]'
GO
ALTER TABLE [dbo].[EmailSchedulerHistory] DROP CONSTRAINT [PK_EmailSchedulerHistory]
GO
PRINT N'Dropping constraints from [dbo].[EmailTransactionTracking]'
GO
ALTER TABLE [dbo].[EmailTransactionTracking] DROP CONSTRAINT [PK_EmailTransactionTracking]
GO
PRINT N'Dropping constraints from [dbo].[ReminderConfiguration]'
GO
ALTER TABLE [dbo].[ReminderConfiguration] DROP CONSTRAINT [PK_ReminderConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[ReminderLastTriggerDate]'
GO
ALTER TABLE [dbo].[ReminderLastTriggerDate] DROP CONSTRAINT [PK_ReminderLastTriggerDate]
GO
PRINT N'Dropping constraints from [dbo].[ReminderTransactionTracking]'
GO
ALTER TABLE [dbo].[ReminderTransactionTracking] DROP CONSTRAINT [PK_ReminderTransactionTracking]
GO
PRINT N'Dropping constraints from [dbo].[ReminderUserConfiguration]'
GO
ALTER TABLE [dbo].[ReminderUserConfiguration] DROP CONSTRAINT [PK_ReminderUserConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[ReminderUserTracking]'
GO
ALTER TABLE [dbo].[ReminderUserTracking] DROP CONSTRAINT [PK_ReminderUserTracking]
GO
PRINT N'Dropping constraints from [dbo].[SmsConfiguration]'
GO
ALTER TABLE [dbo].[SmsConfiguration] DROP CONSTRAINT [PK_SmsConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[SmsLastTriggerDate]'
GO
ALTER TABLE [dbo].[SmsLastTriggerDate] DROP CONSTRAINT [PK_SmsLastTriggerDate]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessConfiguration]'
GO
ALTER TABLE [dbo].[SmsProcessConfiguration] DROP CONSTRAINT [PK_SmsProcessConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[SmsProcessOwnerDetails] DROP CONSTRAINT [PK_SmsProcessOwnerDetails]
GO
PRINT N'Dropping constraints from [dbo].[SmsTransactionTracking]'
GO
ALTER TABLE [dbo].[SmsTransactionTracking] DROP CONSTRAINT [PK_SmsTransactionTracking]
GO
PRINT N'Dropping constraints from [dbo].[SurveyResultDetails]'
GO
ALTER TABLE [dbo].[SurveyResultDetails] DROP CONSTRAINT [PK_SurveyResultDetails]
GO
PRINT N'Dropping constraints from [dbo].[SurveyTrackingDetails]'
GO
ALTER TABLE [dbo].[SurveyTrackingDetails] DROP CONSTRAINT [PK_SurveyTrackingDetails]
GO
PRINT N'Dropping constraints from [dbo].[EmailApplicationOpenMails]'
GO
ALTER TABLE [dbo].[EmailApplicationOpenMails] DROP CONSTRAINT [DF_EmailApplicationOpenMails_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[EmailApplicationOpenMails]'
GO
ALTER TABLE [dbo].[EmailApplicationOpenMails] DROP CONSTRAINT [DF_EmailApplicationOpenMails_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[EmailApplicationOpenMails]'
GO
ALTER TABLE [dbo].[EmailApplicationOpenMails] DROP CONSTRAINT [DF_EmailApplicationOpenMails_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[EmailApplicationOpenMails]'
GO
ALTER TABLE [dbo].[EmailApplicationOpenMails] DROP CONSTRAINT [DF_EmailApplicationOpenMails_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[EmailApplicationOpenMails]'
GO
ALTER TABLE [dbo].[EmailApplicationOpenMails] DROP CONSTRAINT [DF_EmailApplicationOpenMails_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[EmailApplicationOpenMails]'
GO
ALTER TABLE [dbo].[EmailApplicationOpenMails] DROP CONSTRAINT [DF_EmailApplicationOpenMails_Version]
GO
PRINT N'Dropping constraints from [dbo].[EmailConfiguration]'
GO
ALTER TABLE [dbo].[EmailConfiguration] DROP CONSTRAINT [DF_EmailConfiguration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[EmailConfiguration]'
GO
ALTER TABLE [dbo].[EmailConfiguration] DROP CONSTRAINT [DF_EmailConfiguration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[EmailConfiguration]'
GO
ALTER TABLE [dbo].[EmailConfiguration] DROP CONSTRAINT [DF_EmailConfiguration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[EmailConfiguration]'
GO
ALTER TABLE [dbo].[EmailConfiguration] DROP CONSTRAINT [DF_EmailConfiguration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[EmailConfiguration]'
GO
ALTER TABLE [dbo].[EmailConfiguration] DROP CONSTRAINT [DF_EmailConfiguration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[EmailConfiguration]'
GO
ALTER TABLE [dbo].[EmailConfiguration] DROP CONSTRAINT [DF_EmailConfiguration_Version]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessConfiguration]'
GO
ALTER TABLE [dbo].[EmailProcessConfiguration] DROP CONSTRAINT [DF_EmailProcessConfiguration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessConfiguration]'
GO
ALTER TABLE [dbo].[EmailProcessConfiguration] DROP CONSTRAINT [DF_EmailProcessConfiguration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessConfiguration]'
GO
ALTER TABLE [dbo].[EmailProcessConfiguration] DROP CONSTRAINT [DF_EmailProcessConfiguration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessConfiguration]'
GO
ALTER TABLE [dbo].[EmailProcessConfiguration] DROP CONSTRAINT [DF_EmailProcessConfiguration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessConfiguration]'
GO
ALTER TABLE [dbo].[EmailProcessConfiguration] DROP CONSTRAINT [DF_EmailProcessConfiguration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessConfiguration]'
GO
ALTER TABLE [dbo].[EmailProcessConfiguration] DROP CONSTRAINT [DF_EmailProcessConfiguration_Version]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[EmailProcessOwnerDetails] DROP CONSTRAINT [DF_EmailProcessOwnerDetails_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[EmailProcessOwnerDetails] DROP CONSTRAINT [DF_EmailProcessOwnerDetails_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[EmailProcessOwnerDetails] DROP CONSTRAINT [DF_EmailProcessOwnerDetails_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[EmailProcessOwnerDetails] DROP CONSTRAINT [DF_EmailProcessOwnerDetails_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[EmailProcessOwnerDetails] DROP CONSTRAINT [DF_EmailProcessOwnerDetails_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[EmailProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[EmailProcessOwnerDetails] DROP CONSTRAINT [DF_EmailProcessOwnerDetails_Version]
GO
PRINT N'Dropping constraints from [dbo].[ReminderConfiguration]'
GO
ALTER TABLE [dbo].[ReminderConfiguration] DROP CONSTRAINT [DF_ReminderConfiguration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReminderConfiguration]'
GO
ALTER TABLE [dbo].[ReminderConfiguration] DROP CONSTRAINT [DF_ReminderConfiguration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReminderConfiguration]'
GO
ALTER TABLE [dbo].[ReminderConfiguration] DROP CONSTRAINT [DF_ReminderConfiguration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[ReminderConfiguration]'
GO
ALTER TABLE [dbo].[ReminderConfiguration] DROP CONSTRAINT [DF_ReminderConfiguration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[ReminderConfiguration]'
GO
ALTER TABLE [dbo].[ReminderConfiguration] DROP CONSTRAINT [DF_ReminderConfiguration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[ReminderConfiguration]'
GO
ALTER TABLE [dbo].[ReminderConfiguration] DROP CONSTRAINT [DF_ReminderConfiguration_Version]
GO
PRINT N'Dropping constraints from [dbo].[ReminderUserConfiguration]'
GO
ALTER TABLE [dbo].[ReminderUserConfiguration] DROP CONSTRAINT [DF_ReminderUserConfiguration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReminderUserConfiguration]'
GO
ALTER TABLE [dbo].[ReminderUserConfiguration] DROP CONSTRAINT [DF_ReminderUserConfiguration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReminderUserConfiguration]'
GO
ALTER TABLE [dbo].[ReminderUserConfiguration] DROP CONSTRAINT [DF_ReminderUserConfiguration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[ReminderUserConfiguration]'
GO
ALTER TABLE [dbo].[ReminderUserConfiguration] DROP CONSTRAINT [DF_ReminderUserConfiguration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[ReminderUserConfiguration]'
GO
ALTER TABLE [dbo].[ReminderUserConfiguration] DROP CONSTRAINT [DF_ReminderUserConfiguration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[ReminderUserConfiguration]'
GO
ALTER TABLE [dbo].[ReminderUserConfiguration] DROP CONSTRAINT [DF_ReminderUserConfiguration_Version]
GO
PRINT N'Dropping constraints from [dbo].[SmsConfiguration]'
GO
ALTER TABLE [dbo].[SmsConfiguration] DROP CONSTRAINT [DF_SmsConfiguration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[SmsConfiguration]'
GO
ALTER TABLE [dbo].[SmsConfiguration] DROP CONSTRAINT [DF_SmsConfiguration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[SmsConfiguration]'
GO
ALTER TABLE [dbo].[SmsConfiguration] DROP CONSTRAINT [DF_SmsConfiguration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[SmsConfiguration]'
GO
ALTER TABLE [dbo].[SmsConfiguration] DROP CONSTRAINT [DF_SmsConfiguration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[SmsConfiguration]'
GO
ALTER TABLE [dbo].[SmsConfiguration] DROP CONSTRAINT [DF_SmsConfiguration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[SmsConfiguration]'
GO
ALTER TABLE [dbo].[SmsConfiguration] DROP CONSTRAINT [DF_SmsConfiguration_Version]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessConfiguration]'
GO
ALTER TABLE [dbo].[SmsProcessConfiguration] DROP CONSTRAINT [DF_SmsProcessConfiguration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessConfiguration]'
GO
ALTER TABLE [dbo].[SmsProcessConfiguration] DROP CONSTRAINT [DF_SmsProcessConfiguration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessConfiguration]'
GO
ALTER TABLE [dbo].[SmsProcessConfiguration] DROP CONSTRAINT [DF_SmsProcessConfiguration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessConfiguration]'
GO
ALTER TABLE [dbo].[SmsProcessConfiguration] DROP CONSTRAINT [DF_SmsProcessConfiguration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessConfiguration]'
GO
ALTER TABLE [dbo].[SmsProcessConfiguration] DROP CONSTRAINT [DF_SmsProcessConfiguration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessConfiguration]'
GO
ALTER TABLE [dbo].[SmsProcessConfiguration] DROP CONSTRAINT [DF_SmsProcessConfiguration_Version]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[SmsProcessOwnerDetails] DROP CONSTRAINT [DF_SmsProcessOwnerDetails_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[SmsProcessOwnerDetails] DROP CONSTRAINT [DF_SmsProcessOwnerDetails_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[SmsProcessOwnerDetails] DROP CONSTRAINT [DF_SmsProcessOwnerDetails_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[SmsProcessOwnerDetails] DROP CONSTRAINT [DF_SmsProcessOwnerDetails_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[SmsProcessOwnerDetails] DROP CONSTRAINT [DF_SmsProcessOwnerDetails_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[SmsProcessOwnerDetails]'
GO
ALTER TABLE [dbo].[SmsProcessOwnerDetails] DROP CONSTRAINT [DF_SmsProcessOwnerDetails_Version]
GO
PRINT N'Dropping constraints from [dbo].[SurveyResultDetails]'
GO
ALTER TABLE [dbo].[SurveyResultDetails] DROP CONSTRAINT [DF_SurveyResultDetails_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[SurveyResultDetails]'
GO
ALTER TABLE [dbo].[SurveyResultDetails] DROP CONSTRAINT [DF_SurveyResultDetails_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[SurveyResultDetails]'
GO
ALTER TABLE [dbo].[SurveyResultDetails] DROP CONSTRAINT [DF_SurveyResultDetails_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[SurveyResultDetails]'
GO
ALTER TABLE [dbo].[SurveyResultDetails] DROP CONSTRAINT [DF_SurveyResultDetails_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[SurveyResultDetails]'
GO
ALTER TABLE [dbo].[SurveyResultDetails] DROP CONSTRAINT [DF_SurveyResultDetails_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[SurveyResultDetails]'
GO
ALTER TABLE [dbo].[SurveyResultDetails] DROP CONSTRAINT [DF_SurveyResultDetails_Version]
GO
PRINT N'Dropping constraints from [dbo].[SurveyTrackingDetails]'
GO
ALTER TABLE [dbo].[SurveyTrackingDetails] DROP CONSTRAINT [DF_SurveyTrackingDetails_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[SurveyTrackingDetails]'
GO
ALTER TABLE [dbo].[SurveyTrackingDetails] DROP CONSTRAINT [DF_SurveyTrackingDetails_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[SurveyTrackingDetails]'
GO
ALTER TABLE [dbo].[SurveyTrackingDetails] DROP CONSTRAINT [DF_SurveyTrackingDetails_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[SurveyTrackingDetails]'
GO
ALTER TABLE [dbo].[SurveyTrackingDetails] DROP CONSTRAINT [DF_SurveyTrackingDetails_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[SurveyTrackingDetails]'
GO
ALTER TABLE [dbo].[SurveyTrackingDetails] DROP CONSTRAINT [DF_SurveyTrackingDetails_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[SurveyTrackingDetails]'
GO
ALTER TABLE [dbo].[SurveyTrackingDetails] DROP CONSTRAINT [DF_SurveyTrackingDetails_Version]
GO
PRINT N'Dropping index [IDX_EmailApplicationOpenMails] from [dbo].[EmailApplicationOpenMails]'
GO
DROP INDEX [IDX_EmailApplicationOpenMails] ON [dbo].[EmailApplicationOpenMails]
GO
PRINT N'Dropping index [IDX_EmailConfiguration] from [dbo].[EmailConfiguration]'
GO
DROP INDEX [IDX_EmailConfiguration] ON [dbo].[EmailConfiguration]
GO
PRINT N'Dropping index [IDX_EmailLastTriggerDate] from [dbo].[EmailLastTriggerDate]'
GO
DROP INDEX [IDX_EmailLastTriggerDate] ON [dbo].[EmailLastTriggerDate]
GO
PRINT N'Dropping index [IDX_EmailTransactionTracking] from [dbo].[EmailTransactionTracking]'
GO
DROP INDEX [IDX_EmailTransactionTracking] ON [dbo].[EmailTransactionTracking]
GO
PRINT N'Dropping index [IDX_ReminderLastTriggerDate] from [dbo].[ReminderLastTriggerDate]'
GO
DROP INDEX [IDX_ReminderLastTriggerDate] ON [dbo].[ReminderLastTriggerDate]
GO
PRINT N'Dropping index [IDX_ReminderTransactionTracking] from [dbo].[ReminderTransactionTracking]'
GO
DROP INDEX [IDX_ReminderTransactionTracking] ON [dbo].[ReminderTransactionTracking]
GO
PRINT N'Dropping index [IDX_ReminderUserTracking] from [dbo].[ReminderUserTracking]'
GO
DROP INDEX [IDX_ReminderUserTracking] ON [dbo].[ReminderUserTracking]
GO
PRINT N'Dropping index [IDX_SmsConfiguration] from [dbo].[SmsConfiguration]'
GO
DROP INDEX [IDX_SmsConfiguration] ON [dbo].[SmsConfiguration]
GO
PRINT N'Dropping index [IDX_SmsLastTriggerDate] from [dbo].[SmsLastTriggerDate]'
GO
DROP INDEX [IDX_SmsLastTriggerDate] ON [dbo].[SmsLastTriggerDate]
GO
PRINT N'Dropping index [IDX_SmsProcessOwnerDetails] from [dbo].[SmsProcessOwnerDetails]'
GO
DROP INDEX [IDX_SmsProcessOwnerDetails] ON [dbo].[SmsProcessOwnerDetails]
GO
PRINT N'Dropping index [IDX_SmsTransactionTracking] from [dbo].[SmsTransactionTracking]'
GO
DROP INDEX [IDX_SmsTransactionTracking] ON [dbo].[SmsTransactionTracking]
GO
PRINT N'Dropping index [IDX_SurveyResultDetails] from [dbo].[SurveyResultDetails]'
GO
DROP INDEX [IDX_SurveyResultDetails] ON [dbo].[SurveyResultDetails]
GO
PRINT N'Dropping index [IDX_SurveyTrackingDetails] from [dbo].[SurveyTrackingDetails]'
GO
DROP INDEX [IDX_SurveyTrackingDetails] ON [dbo].[SurveyTrackingDetails]
GO
PRINT N'Dropping trigger [dbo].[trgEmailTimeInsert] from [dbo].[EmailConfiguration]'
GO
DROP TRIGGER [dbo].[trgEmailTimeInsert]
GO
PRINT N'Dropping trigger [dbo].[trgEmailTimeUpdate] from [dbo].[EmailConfiguration]'
GO
DROP TRIGGER [dbo].[trgEmailTimeUpdate]
GO
PRINT N'Dropping trigger [dbo].[trgEmailTransactionTrackingUpdate] from [dbo].[EmailTransactionTracking]'
GO
DROP TRIGGER [dbo].[trgEmailTransactionTrackingUpdate]
GO
PRINT N'Dropping trigger [dbo].[trgSmsTimeInsert] from [dbo].[SmsConfiguration]'
GO
DROP TRIGGER [dbo].[trgSmsTimeInsert]
GO
PRINT N'Dropping trigger [dbo].[trgSmsTimeUpdate] from [dbo].[SmsConfiguration]'
GO
DROP TRIGGER [dbo].[trgSmsTimeUpdate]
GO
PRINT N'Dropping [dbo].[spEmailGetEmployeeEmails]'
GO
DROP PROCEDURE [dbo].[spEmailGetEmployeeEmails]
GO
PRINT N'Dropping [dbo].[spEmailApiIntegration]'
GO
DROP PROCEDURE [dbo].[spEmailApiIntegration]
GO
PRINT N'Dropping [dbo].[ViewEmailProcessConfigTables]'
GO
DROP VIEW [dbo].[ViewEmailProcessConfigTables]
GO
PRINT N'Dropping [dbo].[EmailSchedulerHistory]'
GO
DROP TABLE [dbo].[EmailSchedulerHistory]
GO
PRINT N'Dropping [dbo].[viewReminderUserConfiguration]'
GO
DROP VIEW [dbo].[viewReminderUserConfiguration]
GO
PRINT N'Dropping [dbo].[spSurveyUpdateAnswer]'
GO
DROP PROCEDURE [dbo].[spSurveyUpdateAnswer]
GO
PRINT N'Dropping [dbo].[spSurveySubmit]'
GO
DROP PROCEDURE [dbo].[spSurveySubmit]
GO
PRINT N'Dropping [dbo].[spSurveyPrepareQuestions]'
GO
DROP PROCEDURE [dbo].[spSurveyPrepareQuestions]
GO
PRINT N'Dropping [dbo].[spSurveyGetQuestions]'
GO
DROP PROCEDURE [dbo].[spSurveyGetQuestions]
GO
PRINT N'Dropping [dbo].[spReminderUpdateReadStatus]'
GO
DROP PROCEDURE [dbo].[spReminderUpdateReadStatus]
GO
PRINT N'Dropping [dbo].[spReminderTriggerUpdate]'
GO
DROP PROCEDURE [dbo].[spReminderTriggerUpdate]
GO
PRINT N'Dropping [dbo].[ReminderLastTriggerDate]'
GO
DROP TABLE [dbo].[ReminderLastTriggerDate]
GO
PRINT N'Dropping [dbo].[spReminderTrackingEntry]'
GO
DROP PROCEDURE [dbo].[spReminderTrackingEntry]
GO
PRINT N'Dropping [dbo].[spReminderSnooze]'
GO
DROP PROCEDURE [dbo].[spReminderSnooze]
GO
PRINT N'Dropping [dbo].[spReminderGetUserReminders]'
GO
DROP PROCEDURE [dbo].[spReminderGetUserReminders]
GO
PRINT N'Dropping [dbo].[ReminderTransactionTracking]'
GO
DROP TABLE [dbo].[ReminderTransactionTracking]
GO
PRINT N'Dropping [dbo].[spReminderGetConfiguration]'
GO
DROP PROCEDURE [dbo].[spReminderGetConfiguration]
GO
PRINT N'Dropping [dbo].[spReminderDismise]'
GO
DROP PROCEDURE [dbo].[spReminderDismise]
GO
PRINT N'Dropping [dbo].[ReminderUserTracking]'
GO
DROP TABLE [dbo].[ReminderUserTracking]
GO
PRINT N'Dropping [dbo].[spSmsTrackingStatusUpdate]'
GO
DROP PROCEDURE [dbo].[spSmsTrackingStatusUpdate]
GO
PRINT N'Dropping [dbo].[spSmsTrackingEntry]'
GO
DROP PROCEDURE [dbo].[spSmsTrackingEntry]
GO
PRINT N'Dropping [dbo].[SmsTransactionTracking]'
GO
DROP TABLE [dbo].[SmsTransactionTracking]
GO
PRINT N'Dropping [dbo].[spSmsProcessUpdate]'
GO
DROP PROCEDURE [dbo].[spSmsProcessUpdate]
GO
PRINT N'Dropping [dbo].[spSmsGetProcessOwnerMobileNo]'
GO
DROP PROCEDURE [dbo].[spSmsGetProcessOwnerMobileNo]
GO
PRINT N'Dropping [dbo].[spSmsGetConfiguration]'
GO
DROP PROCEDURE [dbo].[spSmsGetConfiguration]
GO
PRINT N'Dropping [dbo].[spEmailUpdateReadStatus]'
GO
DROP PROCEDURE [dbo].[spEmailUpdateReadStatus]
GO
PRINT N'Dropping [dbo].[spEmailTrackingStatusUpdate]'
GO
DROP PROCEDURE [dbo].[spEmailTrackingStatusUpdate]
GO
PRINT N'Dropping [dbo].[spEmailTrackingEntry]'
GO
DROP PROCEDURE [dbo].[spEmailTrackingEntry]
GO
PRINT N'Dropping [dbo].[spEmailProcessUpdate]'
GO
DROP PROCEDURE [dbo].[spEmailProcessUpdate]
GO
PRINT N'Dropping [dbo].[spEmailGetRetryEmails]'
GO
DROP PROCEDURE [dbo].[spEmailGetRetryEmails]
GO
PRINT N'Dropping [dbo].[spEmailGetProcessOwnerEmails]'
GO
DROP PROCEDURE [dbo].[spEmailGetProcessOwnerEmails]
GO
PRINT N'Dropping [dbo].[spEmailGetConfiguration]'
GO
DROP PROCEDURE [dbo].[spEmailGetConfiguration]
GO
PRINT N'Dropping [dbo].[spEmailEventOpenMail]'
GO
DROP PROCEDURE [dbo].[spEmailEventOpenMail]
GO
PRINT N'Dropping [dbo].[fn_GetReminderDate]'
GO
DROP FUNCTION [dbo].[fn_GetReminderDate]
GO
PRINT N'Dropping [dbo].[fn_GetScheduleEmailData]'
GO
DROP FUNCTION [dbo].[fn_GetScheduleEmailData]
GO
PRINT N'Dropping [dbo].[spSmsTriggerUpdate]'
GO
DROP PROCEDURE [dbo].[spSmsTriggerUpdate]
GO
PRINT N'Dropping [dbo].[SmsLastTriggerDate]'
GO
DROP TABLE [dbo].[SmsLastTriggerDate]
GO
PRINT N'Dropping [dbo].[EmailTransactionTracking]'
GO
DROP TABLE [dbo].[EmailTransactionTracking]
GO
PRINT N'Dropping [dbo].[spEmailTriggerUpdate]'
GO
DROP PROCEDURE [dbo].[spEmailTriggerUpdate]
GO
PRINT N'Dropping [dbo].[EmailLastTriggerDate]'
GO
DROP TABLE [dbo].[EmailLastTriggerDate]
GO
PRINT N'Dropping [dbo].[SurveyTrackingDetails]'
GO
DROP TABLE [dbo].[SurveyTrackingDetails]
GO
PRINT N'Dropping [dbo].[SurveyResultDetails]'
GO
DROP TABLE [dbo].[SurveyResultDetails]
GO
PRINT N'Dropping [dbo].[ReminderUserConfiguration]'
GO
DROP TABLE [dbo].[ReminderUserConfiguration]
GO
PRINT N'Dropping [dbo].[ReminderConfiguration]'
GO
DROP TABLE [dbo].[ReminderConfiguration]
GO
PRINT N'Dropping [dbo].[SmsProcessOwnerDetails]'
GO
DROP TABLE [dbo].[SmsProcessOwnerDetails]
GO
PRINT N'Dropping [dbo].[EmailProcessOwnerDetails]'
GO
DROP TABLE [dbo].[EmailProcessOwnerDetails]
GO
PRINT N'Dropping [dbo].[SmsProcessConfiguration]'
GO
DROP TABLE [dbo].[SmsProcessConfiguration]
GO
PRINT N'Dropping [dbo].[SmsConfiguration]'
GO
DROP TABLE [dbo].[SmsConfiguration]
GO
PRINT N'Dropping [dbo].[EmailProcessConfiguration]'
GO
DROP TABLE [dbo].[EmailProcessConfiguration]
GO
PRINT N'Dropping [dbo].[EmailConfiguration]'
GO
DROP TABLE [dbo].[EmailConfiguration]
GO
PRINT N'Dropping [dbo].[EmailApplicationOpenMails]'
GO
DROP TABLE [dbo].[EmailApplicationOpenMails]
GO
PRINT N'Creating [dbo].[CmnUserDetails]'
GO
CREATE TABLE [dbo].[CmnUserDetails]
(
[UserID] [int] NOT NULL IDENTITY(1, 1),
[Type] [int] NOT NULL,
[TypeID] [int] NOT NULL,
[Username] [nvarchar] (100) NOT NULL,
[Password] [nvarchar] (200) NOT NULL,
[RoleID] [varchar] (100) NOT NULL,
[LoginAttempt] [int] NOT NULL CONSTRAINT [DF_CmnUserDetails_LoginAttempt] DEFAULT ((0)),
[IsLocked] [bit] NOT NULL CONSTRAINT [DF_CmnUserDetails_IsLocked] DEFAULT ((0)),
[LicenseType] [int] NULL,
[AuthenticationType] [int] NULL,
[OnlineUser] [bit] NULL,
[ProfileID] [int] NULL CONSTRAINT [DF_CmnUserDetails_ProfileID] DEFAULT ((0)),
[ThemesID] [int] NULL CONSTRAINT [DF_CmnUserDetails_ThemesID] DEFAULT ((0)),
[FontType] [int] NULL CONSTRAINT [DF_CmnUserDetails_FontType] DEFAULT ((0)),
[MenuType] [int] NULL CONSTRAINT [DF_CmnUserDetails_MenuType] DEFAULT ((0)),
[MenuBar] [bit] NULL CONSTRAINT [DF__CmnUserDe__MenuB__37703C52] DEFAULT ((0)),
[BarcodePrinterID] [int] NULL CONSTRAINT [DF_CmnUserDetails_BarcodePrinterID] DEFAULT ((0)),
[COAPrinterID] [int] NULL CONSTRAINT [DF_CmnUserDetails_COAPrinterID] DEFAULT ((0)),
[ProfileOrientation] [int] NULL,
[UserParentID] [int] NULL,
[AccessTypeID] [int] NULL,
[PageOrientation] [int] NULL,
[ThemeMode] [int] NULL,
[SearchType] [int] NULL,
[ModuleBarRequired] [int] NULL,
[RememberSearch] [int] NULL,
[RBSGroupIDs] [varchar] (100) NULL,
[NotActiveReason] [nvarchar] (2000) NULL,
[DeleteReason] [nvarchar] (2000) NULL,
[NotActiveDate] [date] NULL,
[CompanyID] [int] NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnUserDetails_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [datetime] NOT NULL,
[ModifiedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnUserDetails_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [datetime] NOT NULL,
[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_CmnUserDetails_IsDeleted] DEFAULT ((0)),
[DeletedBy] [int] NULL,
[DeletedDate] [datetime] NULL,
[DeletedDateGMT] [datetime] NULL,
[NotActive] [bit] NOT NULL CONSTRAINT [DF__CmnUserDe__NotAc__3D2915A8] DEFAULT ((0)),
[OrderBy] [int] NOT NULL,
[ERPID] [varchar] (25) NULL,
[ResetPassword] [int] NULL CONSTRAINT [DF_CmnUserDetails_ResetPassword] DEFAULT ((1)),
[PasswordUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnUserDetails_PasswordUpdatedDate] DEFAULT (getutcdate()),
[MainPageID] [int] NOT NULL CONSTRAINT [DF_CmnUserDetails_MainPageID] DEFAULT ((1))
)
GO
PRINT N'Creating primary key [PK_CmnUserDetails] on [dbo].[CmnUserDetails]'
GO
ALTER TABLE [dbo].[CmnUserDetails] ADD CONSTRAINT [PK_CmnUserDetails] PRIMARY KEY CLUSTERED ([UserID])
GO
PRINT N'Creating index [IDX_CmnUserDetails] on [dbo].[CmnUserDetails]'
GO
CREATE NONCLUSTERED INDEX [IDX_CmnUserDetails] ON [dbo].[CmnUserDetails] ([Type], [TypeID])
GO
PRINT N'Creating [dbo].[CmnRBSGroupsDataVariable]'
GO
CREATE TABLE [dbo].[CmnRBSGroupsDataVariable]
(
[ReferenceID] [bigint] NOT NULL IDENTITY(1, 1),
[RBSGroupID] [int] NOT NULL,
[FormID] [int] NOT NULL,
[ControlName] [nvarchar] (200) NULL,
[TableName] [varchar] (255) NULL,
[TableColumn] [varchar] (255) NULL,
[DataValue] [nvarchar] (max) NULL,
[SelfData] [bit] NULL,
[CompanyID] [int] NOT NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRBSGroupsDataVariable_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [datetime] NOT NULL CONSTRAINT [DF_CmnRBSGroupsDataVariable_CreatedDateGMT] DEFAULT (getutcdate()),
[ModifiedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRBSGroupsDataVariable_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [datetime] NOT NULL CONSTRAINT [DF_CmnRBSGroupsDataVariable_ModifiedDateGMT] DEFAULT (getutcdate()),
[NotActive] [bit] NOT NULL CONSTRAINT [DF_CmnRBSGroupsDataVariable_NotActive] DEFAULT ((0)),
[NotActiveDate] [datetime] NULL,
[NotActiveDateGMT] [datetime] NULL,
[NotActiveReason] [nvarchar] (max) NULL,
[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_CmnRBSGroupsDataVariable_IsDeleted] DEFAULT ((0)),
[DeletedBy] [int] NULL,
[DeletedDate] [datetime] NULL,
[DeletedDateGMT] [datetime] NULL,
[DeleteReason] [nvarchar] (max) NULL,
[OrderBy] [int] NOT NULL,
[VersionID] [int] NULL,
[Version] [int] NOT NULL CONSTRAINT [DF_CmnRBSGroupsDataVariable_Version] DEFAULT ((0)),
[IsCurrentVersion] [bit] NOT NULL CONSTRAINT [DF_CmnRBSGroupsDataVariable_IsCurrentVersion] DEFAULT ((1)),
[ERPID] [varchar] (25) NULL
)
GO
PRINT N'Creating primary key [PK_CmnRBSGroupsDataVariable] on [dbo].[CmnRBSGroupsDataVariable]'
GO
ALTER TABLE [dbo].[CmnRBSGroupsDataVariable] ADD CONSTRAINT [PK_CmnRBSGroupsDataVariable] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_CmnRBSGroupsDataVariable] on [dbo].[CmnRBSGroupsDataVariable]'
GO
CREATE NONCLUSTERED INDEX [IDX_CmnRBSGroupsDataVariable] ON [dbo].[CmnRBSGroupsDataVariable] ([RBSGroupID], [FormID], [TableName], [TableColumn])
GO
PRINT N'Creating [dbo].[CmnRbsGroups]'
GO
CREATE TABLE [dbo].[CmnRbsGroups]
(
[ReferenceID] [bigint] NOT NULL IDENTITY(1, 1),
[Code] [varchar] (500) NOT NULL,
[Name] [varchar] (500) NOT NULL,
[Description] [nvarchar] (4000) NULL,
[CompanyID] [int] NOT NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRbsGroups_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [datetime] NOT NULL,
[ModifiedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRbsGroups_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [datetime] NOT NULL,
[NotActive] [bit] NOT NULL CONSTRAINT [DF_CmnRbsGroups_NotActive] DEFAULT ((0)),
[NotActiveDate] [datetime] NULL,
[NotActiveDateGMT] [datetime] NULL,
[NotActiveReason] [nvarchar] (100) NULL,
[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_CmnRbsGroups_IsDeleted] DEFAULT ((0)),
[DeletedBy] [int] NULL,
[DeletedDate] [datetime] NULL,
[DeletedDateGMT] [datetime] NULL,
[DeleteReason] [nvarchar] (100) NULL,
[IsCurrentVersion] [bit] NOT NULL CONSTRAINT [DF_CmnRbsGroups_IsCurrentVersion] DEFAULT ((1)),
[Version] [int] NOT NULL CONSTRAINT [DF_CmnRbsGroups_Version] DEFAULT ((1)),
[VersionID] [int] NULL,
[OrderBy] [int] NOT NULL,
[ERPID] [varchar] (25) NULL
)
GO
PRINT N'Creating primary key [PK_CmnRbsGroups] on [dbo].[CmnRbsGroups]'
GO
ALTER TABLE [dbo].[CmnRbsGroups] ADD CONSTRAINT [PK_CmnRbsGroups] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating [dbo].[CmnRbsGroupForms]'
GO
CREATE TABLE [dbo].[CmnRbsGroupForms]
(
[ReferenceID] [bigint] NOT NULL IDENTITY(1, 1),
[FormID] [bigint] NOT NULL,
[RBSGroupID] [bigint] NOT NULL,
[CompanyID] [int] NOT NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRbsGroupForms_CreatedDate] DEFAULT (getutcdate()),
[CreatedDateGMT] [datetime] NOT NULL,
[ModifiedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRbsGroupForms_ModifiedDate] DEFAULT (getutcdate()),
[ModifiedDateGMT] [datetime] NOT NULL,
[NotActive] [bit] NOT NULL CONSTRAINT [DF_CmnRbsGroupForms_NotActive] DEFAULT ((0)),
[NotActiveDate] [datetime] NULL,
[NotActiveDateGMT] [datetime] NULL,
[NotActiveReason] [nvarchar] (100) NULL,
[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_CmnRbsGroupForms_IsDeleted] DEFAULT ((0)),
[DeletedBy] [int] NULL,
[DeletedDate] [datetime] NULL,
[DeletedDateGMT] [datetime] NULL,
[DeleteReason] [nvarchar] (100) NULL,
[IsCurrentVersion] [bit] NOT NULL CONSTRAINT [DF_CmnRbsGroupForms_IsCurrentVersion] DEFAULT ((1)),
[Version] [int] NOT NULL CONSTRAINT [DF_CmnRbsGroupForms_Version] DEFAULT ((1)),
[VersionID] [int] NULL,
[OrderBy] [int] NOT NULL,
[ERPID] [varchar] (25) NULL
)
GO
PRINT N'Creating primary key [PK_CmnRbsGroupForms] on [dbo].[CmnRbsGroupForms]'
GO
ALTER TABLE [dbo].[CmnRbsGroupForms] ADD CONSTRAINT [PK_CmnRbsGroupForms] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating [dbo].[CmnRBSDataVariablePermission]'
GO
CREATE TABLE [dbo].[CmnRBSDataVariablePermission]
(
[ReferenceID] [int] NOT NULL IDENTITY(1, 1),
[UserID] [int] NOT NULL,
[FormID] [int] NOT NULL,
[ControlName] [nvarchar] (200) NULL,
[TableName] [varchar] (255) NULL,
[TableColumn] [varchar] (255) NULL,
[DataValue] [nvarchar] (max) NULL,
[SelfData] [bit] NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRBSDataVariablePermission_CreatedDate] DEFAULT (getutcdate()),
[ModifiedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRBSDataVariablePermission_ModifiedDate] DEFAULT (getutcdate()),
[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_CmnRBSDataVariablePermission_IsDeleted] DEFAULT ((0)),
[DeletedBy] [int] NULL,
[DeletedDate] [datetime] NULL
)
GO
PRINT N'Creating primary key [PK_CmnRBSDataVariablePermission] on [dbo].[CmnRBSDataVariablePermission]'
GO
ALTER TABLE [dbo].[CmnRBSDataVariablePermission] ADD CONSTRAINT [PK_CmnRBSDataVariablePermission] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_CmnRBSDataVariablePermission] on [dbo].[CmnRBSDataVariablePermission]'
GO
CREATE NONCLUSTERED INDEX [IDX_CmnRBSDataVariablePermission] ON [dbo].[CmnRBSDataVariablePermission] ([UserID], [FormID], [TableName], [TableColumn])
GO
PRINT N'Creating [dbo].[spCmnRBSDataVarGroupUpdate]'
GO
CREATE PROCEDURE [dbo].[spCmnRBSDataVarGroupUpdate](@IN_RBSUserID INT, @IN_USERID INT, @IN_SESSIONID VARCHAR(500))
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @ErrorMessage NVARCHAR(2000),
			@ErrorSeverity NVARCHAR(50),
			@ErrorState NVARCHAR(50),
			@UTCTime DATETIME = GETUTCDATE(),
			@RBSGroupIDs VARCHAR(100);

		SELECT @RBSGroupIDs = RBSGroupIDs
		FROM CmnUserDetails 
		WHERE UserID = @IN_RBSUserID;

		DECLARE @RBSGroup Table (RBSGroupID BIGINT);

		INSERT INTO @RBSGroup
		SELECT Value FROM STRING_SPLIT(@RBSGroupIDs, ',');
							
		UPDATE CmnRBSDataVariablePermission
		SET IsDeleted = 1, DeletedBy = @IN_USERID, DeletedDate = @UTCTime
		WHERE UserID = @IN_RBSUserID AND IsDeleted = 0;

		INSERT INTO CmnRBSDataVariablePermission
			(UserID, FormID, ControlName, TableName,
			 TableColumn, DataValue, SelfData, CreatedBy,
			 CreatedDate, ModifiedBy, ModifiedDate,	IsDeleted)
		SELECT @IN_RBSUserID, D.FormID, D.ControlName, D.TableName, D.TableColumn,
			REPLACE(REPLACE(STRING_AGG(CAST(D.DataValue AS VARCHAR(50)), ',') WITHIN GROUP (ORDER BY CAST(D.DataValue AS INT)), '-1,', ''), '-1', '') AS DataValue,
			MAX(CAST(D.SelfData AS INT)) AS SelfData, @IN_USERID,
			@UTCTime, @IN_USERID, @UTCTime, 0
		FROM 
			(SELECT DISTINCT
				GFV.FormID,
				GFV.ControlName,
				GFV.TableName,
				GFV.TableColumn,
				--STRING_AGG(DV.value, ',') WITHIN GROUP (ORDER BY CAST(DV.value AS INT)) AS DataValue
				CASE WHEN TRIM(DV.value) = '' THEN '-1' ELSE TRIM(DV.value) END AS DataValue,
				GFV.SelfData
			FROM CmnRbsGroups G
				JOIN @RBSGroup FG ON FG.RBSGroupID = G.ReferenceID
				JOIN CmnRbsGroupForms GF ON GF.RBSGroupID = G.ReferenceID AND GF.IsDeleted = 0
				JOIN CmnRBSGroupsDataVariable GFV ON GFV.RBSGroupID = GF.RBSGroupID 
					AND GFV.FormID = GF.FormID AND GFV.IsDeleted = 0
				CROSS APPLY STRING_SPLIT(GFV.DataValue, ',') AS DV) AS D
		GROUP BY D.FormID,
			D.ControlName,
			D.TableName,
			D.TableColumn

	END TRY
	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Creating [dbo].[CmnRolePermission]'
GO
CREATE TABLE [dbo].[CmnRolePermission]
(
[RoleID] [int] NOT NULL,
[FormID] [int] NOT NULL,
[HasReadPermission] [bit] NOT NULL,
[Tabs] [varchar] (200) NULL,
[Buttons] [varchar] (1000) NULL,
[Audit] [bit] NOT NULL,
[SubAudit] [bit] NOT NULL,
[ValidateChecksum] [bit] NOT NULL,
[IsFavourite] [bit] NOT NULL,
[FavouriteOrder] [int] NULL,
[MainMenuOrder] [int] NULL,
[SubMenuOrder] [int] NULL,
[ConfirmMsg] [bit] NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRolePermission_CreatedDate] DEFAULT (getutcdate()),
[ModifiedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRolePermission_ModifiedDate] DEFAULT (getutcdate()),
[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_CmnRolePermission_IsDeleted] DEFAULT ((0)),
[DeletedBy] [int] NULL,
[DeletedDate] [datetime] NULL
)
GO
PRINT N'Creating index [IDX_CmnRolePermission] on [dbo].[CmnRolePermission]'
GO
CREATE NONCLUSTERED INDEX [IDX_CmnRolePermission] ON [dbo].[CmnRolePermission] ([RoleID], [FormID])
GO
PRINT N'Creating [dbo].[CmnRBSRoleDataVariablePermission]'
GO
CREATE TABLE [dbo].[CmnRBSRoleDataVariablePermission]
(
[ReferenceID] [int] NOT NULL IDENTITY(1, 1),
[RoleID] [int] NOT NULL,
[FormID] [int] NOT NULL,
[ControlName] [nvarchar] (200) NULL,
[TableName] [varchar] (255) NULL,
[TableColumn] [varchar] (255) NULL,
[DataValue] [nvarchar] (max) NULL,
[SelfData] [bit] NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRBSRoleDataVariablePermission_CreatedDate] DEFAULT (getutcdate()),
[ModifiedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRBSRoleDataVariablePermission_ModifiedDate] DEFAULT (getutcdate()),
[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_CmnRBSRoleDataVariablePermission_IsDeleted] DEFAULT ((0)),
[DeletedBy] [int] NULL,
[DeletedDate] [datetime] NULL
)
GO
PRINT N'Creating primary key [PK_CmnRBSRoleDataVariablePermission] on [dbo].[CmnRBSRoleDataVariablePermission]'
GO
ALTER TABLE [dbo].[CmnRBSRoleDataVariablePermission] ADD CONSTRAINT [PK_CmnRBSRoleDataVariablePermission] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_CmnRBSRoleDataVariablePermission] on [dbo].[CmnRBSRoleDataVariablePermission]'
GO
CREATE NONCLUSTERED INDEX [IDX_CmnRBSRoleDataVariablePermission] ON [dbo].[CmnRBSRoleDataVariablePermission] ([RoleID], [FormID], [TableName], [TableColumn])
GO
PRINT N'Creating [dbo].[CmnRBSPermission]'
GO
CREATE TABLE [dbo].[CmnRBSPermission]
(
[UserID] [int] NOT NULL,
[FormID] [int] NOT NULL,
[HasReadPermission] [bit] NOT NULL,
[Tabs] [varchar] (200) NULL,
[Buttons] [varchar] (1000) NULL,
[Audit] [bit] NOT NULL,
[SubAudit] [bit] NOT NULL,
[ValidateChecksum] [bit] NOT NULL,
[IsFavourite] [bit] NOT NULL,
[FavouriteOrder] [int] NULL,
[MainMenuOrder] [int] NULL,
[SubMenuOrder] [int] NULL,
[ConfirmMsg] [bit] NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRBSPermission_CreatedDate] DEFAULT (getutcdate()),
[ModifiedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnRBSPermission_ModifiedDate] DEFAULT (getutcdate()),
[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_CmnRBSPermission_IsDeleted] DEFAULT ((0)),
[DeletedBy] [int] NULL,
[DeletedDate] [datetime] NULL
)
GO
PRINT N'Creating index [IDX_CmnRBSPermission] on [dbo].[CmnRBSPermission]'
GO
CREATE NONCLUSTERED INDEX [IDX_CmnRBSPermission] ON [dbo].[CmnRBSPermission] ([UserID], [FormID], [IsDeleted])
GO
PRINT N'Creating [dbo].[CmnLoginHistory]'
GO
CREATE TABLE [dbo].[CmnLoginHistory]
(
[ReferenceID] [bigint] NOT NULL IDENTITY(1, 1),
[UserID] [int] NULL,
[UserName] [nvarchar] (100) NULL,
[SessionID] [nvarchar] (400) NULL,
[LoginIP] [varchar] (100) NULL,
[LoginTime] [datetime] NULL,
[LogoutTime] [datetime] NULL,
[UserStatusID] [int] NULL,
[FailReasonID] [int] NULL,
[LogoutTypeID] [int] NULL,
[Remarks] [varchar] (250) NULL,
[LastUpdatedTime] [datetime] NULL,
[IsMobileApp] [bit] NULL,
[IsMobileBrowser] [bit] NULL,
[ScreenSize] [varchar] (50) NULL,
[OS] [varchar] (100) NULL,
[OSVersion] [varchar] (100) NULL,
[Browser] [varchar] (100) NULL,
[BrowserVersion] [varchar] (100) NULL,
[UserAgent] [nvarchar] (max) NULL
)
GO
PRINT N'Creating index [IDX_CmnLoginHistory] on [dbo].[CmnLoginHistory]'
GO
CREATE NONCLUSTERED INDEX [IDX_CmnLoginHistory] ON [dbo].[CmnLoginHistory] ([UserID], [SessionID], [UserStatusID])
GO
PRINT N'Creating index [IDX_CmnLoginHistoryStatus] on [dbo].[CmnLoginHistory]'
GO
CREATE NONCLUSTERED INDEX [IDX_CmnLoginHistoryStatus] ON [dbo].[CmnLoginHistory] ([UserStatusID], [UserID])
GO
PRINT N'Creating trigger [dbo].[trgCmnUpdateRolePermission] on [dbo].[CmnUserDetails]'
GO
CREATE TRIGGER [dbo].[trgCmnUpdateRolePermission]
ON [dbo].[CmnUserDetails]
 AFTER UPDATE
AS
	SET NOCOUNT ON;
	DECLARE @UTCTime DATETIME = GETUTCDATE(),
			@PrevRoles VARCHAR(100),
			@NewRoles VARCHAR(100),
			@UserID INT,
			@ModifiedBy INT,
			@PrevNotActive BIT,
			@NotActive BIT; 

	SELECT @PrevRoles = RoleID, @PrevNotActive = NotActive FROM DELETED;
	SELECT @NewRoles = RoleID, @UserID = UserID, @ModifiedBy = ModifiedBy, @NotActive = NotActive FROM INSERTED;

	IF @PrevRoles <> @NewRoles 
	BEGIN
		DELETE FROM CmnRBSPermission WHERE UserID = @UserID;

		WITH UserRoleCTE AS (
			SELECT DISTINCT FormID, CASE WHEN SUM(CASE WHEN PATINDEX('%,' + CAST(RoleID AS VARCHAR(MAX)) + ',%', ',' + ISNULL(@NewRoles, '') + ',') > 0 
										AND HasReadPermission = 1 THEN 1 ELSE 0 END) > 0 THEN 1
				ELSE 0 END AS HasReadPermission, MIN(RoleID) AS RoleID
			FROM CmnRolePermission
			WHERE PATINDEX('%,' + CAST(RoleID AS VARCHAR(MAX)) + ',%', ',' + ISNULL(@NewRoles, '') + ',') > 0 AND IsDeleted = 0
			GROUP BY FormID
		) 
		INSERT INTO CmnRBSPermission (FormID, HasReadPermission, Tabs, Buttons, Audit, SubAudit, ValidateChecksum, 
			MainMenuOrder, SubMenuOrder, IsFavourite, FavouriteOrder, UserID, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
		SELECT DISTINCT E.FormID, I.HasReadPermission, E.Tabs, E.Buttons, E.Audit, E.SubAudit, E.ValidateChecksum, 
			E.MainMenuOrder, E.SubMenuOrder, E.IsFavourite, E.FavouriteOrder, @UserID, @ModifiedBy, @UTCTime, @ModifiedBy, @UTCTime, 0
		FROM CmnRolePermission E
			JOIN UserRoleCTE I ON I.RoleID = E.RoleID AND I.FormID = E.FormID
		WHERE E.IsDeleted = 0;

		DELETE FROM CmnRBSDataVariablePermission WHERE UserID = @UserID;

		INSERT INTO CmnRBSDataVariablePermission (UserID, FormID, ControlName, TableName, TableColumn,
			DataValue, SelfData, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
		SELECT @UserID, D.FormID, D.ControlName, D.TableName, D.TableColumn,
					REPLACE(REPLACE(STRING_AGG(CAST(D.DataValue AS VARCHAR(50)), ',') WITHIN GROUP (ORDER BY CAST(D.DataValue AS INT)), '-1,', ''), '-1', '') AS DataValue,
					MAX(CAST(D.SelfData AS INT)) AS SelfData, @ModifiedBy, @UTCTime, @ModifiedBy, @UTCTime, 0
		FROM (SELECT DISTINCT
				GFV.FormID, GFV.ControlName, GFV.TableName, GFV.TableColumn,
				CASE WHEN TRIM(DV.value) = '' THEN '-1' ELSE TRIM(DV.value) END AS DataValue,
				GFV.SelfData
			FROM CmnRBSRoleDataVariablePermission GFV
				CROSS APPLY STRING_SPLIT(GFV.DataValue, ',') AS DV WHERE PATINDEX('%,' + CAST(GFV.RoleID AS VARCHAR(MAX)) + ',%', ',' + ISNULL(@NewRoles, '') + ',') > 0 
					AND GFV.IsDeleted = 0) AS D
		GROUP BY D.FormID, D.ControlName, D.TableName, D.TableColumn;

		EXEC spCmnRBSDataVarGroupUpdate @UserID, @ModifiedBy, '';
	END

	IF ((@PrevNotActive <> @NotActive) AND @NotActive = 1)
	BEGIN
		UPDATE CmnLoginHistory  
		SET	UserStatusID = 2, 
			LogoutTime = @UTCTime, 
			LogoutTypeID = 3,
			Remarks ='User Not Active' 
		WHERE UserID = @UserID AND UserStatusID = 1;
	END
GO
PRINT N'Creating trigger [dbo].[trgCmnUserPermission] on [dbo].[CmnUserDetails]'
GO
CREATE TRIGGER [dbo].[trgCmnUserPermission]
ON [dbo].[CmnUserDetails] FOR INSERT AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @UTCTime DATETIME = GETUTCDATE(),
			@Roles VARCHAR(100),
			@UserID INT,
			@ModifiedBy INT;
			
	SELECT @Roles = RoleID, @UserID = UserID, @ModifiedBy = ModifiedBy FROM INSERTED;

	WITH UserRoleCTE AS (
		SELECT DISTINCT FormID, CASE WHEN SUM(CASE WHEN PATINDEX('%,' + CAST(RoleID AS VARCHAR(MAX)) + ',%', ',' + ISNULL(@Roles, '') + ',') > 0 
									AND HasReadPermission = 1 THEN 1 ELSE 0 END) > 0 THEN 1
			ELSE 0 END AS HasReadPermission, MIN(RoleID) AS RoleID
		FROM CmnRolePermission
		WHERE PATINDEX('%,' + CAST(RoleID AS VARCHAR(MAX)) + ',%', ',' + ISNULL(@Roles, '') + ',') > 0 AND IsDeleted = 0
		GROUP BY FormID
	) 
	INSERT INTO CmnRBSPermission (FormID, HasReadPermission, Tabs, Buttons, Audit, SubAudit, ValidateChecksum, 
		MainMenuOrder, SubMenuOrder, IsFavourite, FavouriteOrder, UserID, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
	SELECT DISTINCT E.FormID, I.HasReadPermission, E.Tabs, E.Buttons, E.Audit, E.SubAudit, E.ValidateChecksum, 
		E.MainMenuOrder, E.SubMenuOrder, E.IsFavourite, E.FavouriteOrder, @UserID, @ModifiedBy, @UTCTime, @ModifiedBy, @UTCTime, 0
	FROM CmnRolePermission E
		JOIN UserRoleCTE I ON I.RoleID = E.RoleID AND I.FormID = E.FormID
	WHERE E.IsDeleted = 0;

	INSERT INTO CmnRBSDataVariablePermission (UserID, FormID, ControlName, TableName, TableColumn,
		DataValue, SelfData, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted)
	SELECT @UserID, D.FormID, D.ControlName, D.TableName, D.TableColumn,
				REPLACE(REPLACE(STRING_AGG(CAST(D.DataValue AS VARCHAR(50)), ',') WITHIN GROUP (ORDER BY CAST(D.DataValue AS INT)), '-1,', ''), '-1', '') AS DataValue,
				MAX(CAST(D.SelfData AS INT)) AS SelfData, @ModifiedBy, @UTCTime, @ModifiedBy, @UTCTime, 0
	FROM (SELECT DISTINCT
			GFV.FormID, GFV.ControlName, GFV.TableName, GFV.TableColumn,
			CASE WHEN TRIM(DV.value) = '' THEN '-1' ELSE TRIM(DV.value) END AS DataValue,
			GFV.SelfData
		FROM CmnRBSRoleDataVariablePermission GFV
			CROSS APPLY STRING_SPLIT(GFV.DataValue, ',') AS DV WHERE PATINDEX('%,' + CAST(GFV.RoleID AS VARCHAR(MAX)) + ',%', ',' + ISNULL(@Roles, '') + ',') > 0 
				AND GFV.IsDeleted = 0) AS D
	GROUP BY D.FormID, D.ControlName, D.TableName, D.TableColumn;

	EXEC spCmnRBSDataVarGroupUpdate @UserID, @ModifiedBy, '';
END
GO
PRINT N'Creating [dbo].[CmnFormDetails]'
GO
CREATE TABLE [dbo].[CmnFormDetails]
(
[FormID] [int] NOT NULL,
[Name] [nvarchar] (100) NOT NULL,
[DisplayName] [nvarchar] (200) NOT NULL,
[FormPath] [nvarchar] (500) NULL,
[MainMenu1] [int] NULL,
[MainMenu2] [int] NULL,
[MainMenu3] [int] NULL,
[ModuleID] [int] NOT NULL,
[MainMenuOrder] [int] NULL,
[SubMenuOrder] [int] NULL,
[TableName] [sys].[sysname] NULL,
[KeyColumn] [sys].[sysname] NULL,
[FormType] [int] NOT NULL CONSTRAINT [DF_CmnFormDetails_FormType] DEFAULT ((0)),
[FormIcon] [nvarchar] (50) NOT NULL,
[AuditTrail] [bit] NOT NULL CONSTRAINT [DF_CmnFormDetails_AuditTrail] DEFAULT ((0)),
[PageOrientation] [int] NULL,
[FormEvents] [nvarchar] (max) NULL,
[IsMobileMenu] [bit] NOT NULL CONSTRAINT [DF_CmnFormDetails_IsMobileMenu] DEFAULT ((1)),
[IsOfflineSave] [bit] NULL,
[IsFooter] [bit] NULL,
[IsMainPage] [bit] NULL,
[CompanyID] [int] NULL,
[ModifiedDateGMT] [datetime] NULL,
[CreatedBy] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnFormDetails_CreatedDate] DEFAULT (getutcdate()),
[ModifiedBy] [int] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_CmnFormDetails_ModifiedDate] DEFAULT (getutcdate()),
[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_CmnFormDetails_IsDeleted] DEFAULT ((0)),
[DeletedBy] [int] NULL,
[DeletedDate] [datetime] NULL,
[DeletedReason] [nvarchar] (4000) NULL
)
GO
PRINT N'Creating primary key [PK_CmnFormDetails] on [dbo].[CmnFormDetails]'
GO
ALTER TABLE [dbo].[CmnFormDetails] ADD CONSTRAINT [PK_CmnFormDetails] PRIMARY KEY CLUSTERED ([FormID])
GO
PRINT N'Creating index [IDX_CmnFormDetailsMain] on [dbo].[CmnFormDetails]'
GO
CREATE NONCLUSTERED INDEX [IDX_CmnFormDetailsMain] ON [dbo].[CmnFormDetails] ([MainMenu1], [IsDeleted])
GO
PRINT N'Creating index [IDX_CmnFormDetails] on [dbo].[CmnFormDetails]'
GO
CREATE NONCLUSTERED INDEX [IDX_CmnFormDetails] ON [dbo].[CmnFormDetails] ([ModuleID], [MainMenu1], [Name])
GO
PRINT N'Creating [dbo].[CmnSilentLoginTracking]'
GO
CREATE TABLE [dbo].[CmnSilentLoginTracking]
(
[ReferenceID] [bigint] NOT NULL IDENTITY(1, 1),
[UserID] [bigint] NOT NULL,
[SessionID] [nvarchar] (500) NULL,
[Token] [varchar] (200) NULL,
[Direction] [varchar] (5) NOT NULL,
[ModuleName] [nvarchar] (500) NULL,
[InitiatedDate] [datetime] NOT NULL,
[ExpiryDate] [datetime] NOT NULL,
[IsAuthenticated] [bit] NOT NULL,
[Status] [varchar] (1) NULL
)
GO
PRINT N'Creating primary key [PK_CmnSilentLoginTracking] on [dbo].[CmnSilentLoginTracking]'
GO
ALTER TABLE [dbo].[CmnSilentLoginTracking] ADD CONSTRAINT [PK_CmnSilentLoginTracking] PRIMARY KEY CLUSTERED ([ReferenceID])
GO
PRINT N'Creating index [IDX_CmnSilentLoginTracking] on [dbo].[CmnSilentLoginTracking]'
GO
CREATE NONCLUSTERED INDEX [IDX_CmnSilentLoginTracking] ON [dbo].[CmnSilentLoginTracking] ([UserID], [Token])
GO
PRINT N'Creating [dbo].[spCmnCreateSilentLogin]'
GO
CREATE PROCEDURE [dbo].[spCmnCreateSilentLogin](
 @IN_UserName NVARCHAR(200),
 @IN_ModuleName NVARCHAR(500),
 @IN_Token NVARCHAR(500))
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY

		DECLARE @ErrorMessage VARCHAR(2000),
						@ErrorSeverity VARCHAR(50),
						@ErrorState	VARCHAR(50),
						@TimeStamp DATETIME = GETUTCDATE(),
						@ExpiryDate DATETIME,
						@Message NVARCHAR(1000) = '',
						@UserID INT = ISNULL((SELECT UserID FROM CmnUserDetails WHERE Username = @IN_UserName AND ISNULL(IsLocked, 0) = 0 AND ISNULL(IsDeleted, 0) = 0), 0)

		SET @ExpiryDate = DATEADD(MI, 1, @TimeStamp)

		IF @UserID <> 0
		BEGIN
			INSERT INTO CmnSilentLoginTracking (UserID, SessionID, Token, Direction, ModuleName, InitiatedDate, ExpiryDate, IsAuthenticated, [Status])
			SELECT UserID, NULL, @IN_Token, 'IN', @IN_ModuleName, @TimeStamp, @ExpiryDate, 0, 'I'
			FROM CmnUserDetails 
			WHERE Username = @IN_UserName AND ISNULL(IsLocked, 0) = 0 AND ISNULL(IsDeleted, 0) = 0
		END
		ELSE
			SET @Message = 'User not available'

		SELECT @Message AS Message

	END TRY
	BEGIN CATCH
	  SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE() 
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
PRINT N'Adding foreign keys to [dbo].[CmnRBSPermission]'
GO
ALTER TABLE [dbo].[CmnRBSPermission] ADD CONSTRAINT [FK_CmnRBSPermissionFormID] FOREIGN KEY ([FormID]) REFERENCES [dbo].[CmnFormDetails] ([FormID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CmnRBSPermission] ADD CONSTRAINT [FK_CmnRBSPermissionUserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[CmnUserDetails] ([UserID]) ON DELETE CASCADE
GO
PRINT N'Adding foreign keys to [dbo].[CmnRolePermission]'
GO
ALTER TABLE [dbo].[CmnRolePermission] ADD CONSTRAINT [FK_CmnRolePermissionFormID] FOREIGN KEY ([FormID]) REFERENCES [dbo].[CmnFormDetails] ([FormID]) ON DELETE CASCADE
GO

