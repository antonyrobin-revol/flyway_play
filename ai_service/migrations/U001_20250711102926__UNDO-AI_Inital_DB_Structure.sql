SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping constraints from [dbo].[AisAnalystAssignTrain]'
GO
ALTER TABLE [dbo].[AisAnalystAssignTrain] DROP CONSTRAINT [PK_AisAnalystAssignTrain]
GO
PRINT N'Dropping constraints from [dbo].[AisCallAssignTrain]'
GO
ALTER TABLE [dbo].[AisCallAssignTrain] DROP CONSTRAINT [PK_AisCallAssignTrain]
GO
PRINT N'Dropping constraints from [dbo].[AisCallLogAgent]'
GO
ALTER TABLE [dbo].[AisCallLogAgent] DROP CONSTRAINT [PK_AisCallLogAgent]
GO
PRINT N'Dropping constraints from [dbo].[AisImageProcessTracking]'
GO
ALTER TABLE [dbo].[AisImageProcessTracking] DROP CONSTRAINT [PK_AisImageProcessTracking]
GO
PRINT N'Dropping constraints from [dbo].[AisQueryBuilderTracking]'
GO
ALTER TABLE [dbo].[AisQueryBuilderTracking] DROP CONSTRAINT [PK_AisQueryBuilderTracking]
GO
PRINT N'Dropping constraints from [dbo].[AisQueryBuilderTracking]'
GO
ALTER TABLE [dbo].[AisQueryBuilderTracking] DROP CONSTRAINT [UQ__AisQueryBuilderT__6919A42]
GO
PRINT N'Dropping constraints from [dbo].[AisRagDocuments]'
GO
ALTER TABLE [dbo].[AisRagDocuments] DROP CONSTRAINT [PK_AisRagDocuments]
GO
PRINT N'Dropping constraints from [dbo].[AisResultPredictionTrain]'
GO
ALTER TABLE [dbo].[AisResultPredictionTrain] DROP CONSTRAINT [PK_AisResultPredictionTrain]
GO
PRINT N'Dropping constraints from [dbo].[AisSampleLogAgent]'
GO
ALTER TABLE [dbo].[AisSampleLogAgent] DROP CONSTRAINT [PK_AisSampleLogAgent]
GO
PRINT N'Dropping constraints from [dbo].[AisSchemaStructures]'
GO
ALTER TABLE [dbo].[AisSchemaStructures] DROP CONSTRAINT [PK_AisSchemaStructures]
GO
PRINT N'Dropping constraints from [dbo].[AisViewCreationTracking]'
GO
ALTER TABLE [dbo].[AisViewCreationTracking] DROP CONSTRAINT [PK_AisViewCreationTracking]
GO
PRINT N'Dropping constraints from [dbo].[AisAnalystAssignTrain]'
GO
ALTER TABLE [dbo].[AisAnalystAssignTrain] DROP CONSTRAINT [DF_AisAnalystAssignTrain_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisAnalystAssignTrain]'
GO
ALTER TABLE [dbo].[AisAnalystAssignTrain] DROP CONSTRAINT [DF_AisAnalystAssignTrain_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisAnalystAssignTrain]'
GO
ALTER TABLE [dbo].[AisAnalystAssignTrain] DROP CONSTRAINT [DF_AisAnalystAssignTrain_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[AisAnalystAssignTrain]'
GO
ALTER TABLE [dbo].[AisAnalystAssignTrain] DROP CONSTRAINT [DF_AisAnalystAssignTrain_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[AisAnalystAssignTrain]'
GO
ALTER TABLE [dbo].[AisAnalystAssignTrain] DROP CONSTRAINT [DF_AisAnalystAssignTrain_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[AisAnalystAssignTrain]'
GO
ALTER TABLE [dbo].[AisAnalystAssignTrain] DROP CONSTRAINT [DF_AisAnalystAssignTrain_Version]
GO
PRINT N'Dropping constraints from [dbo].[AisCallAssignTrain]'
GO
ALTER TABLE [dbo].[AisCallAssignTrain] DROP CONSTRAINT [DF_AisCallAssignTrain_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisCallAssignTrain]'
GO
ALTER TABLE [dbo].[AisCallAssignTrain] DROP CONSTRAINT [DF_AisCallAssignTrain_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisCallAssignTrain]'
GO
ALTER TABLE [dbo].[AisCallAssignTrain] DROP CONSTRAINT [DF_AisCallAssignTrain_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[AisCallAssignTrain]'
GO
ALTER TABLE [dbo].[AisCallAssignTrain] DROP CONSTRAINT [DF_AisCallAssignTrain_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[AisCallAssignTrain]'
GO
ALTER TABLE [dbo].[AisCallAssignTrain] DROP CONSTRAINT [DF_AisCallAssignTrain_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[AisCallAssignTrain]'
GO
ALTER TABLE [dbo].[AisCallAssignTrain] DROP CONSTRAINT [DF_AisCallAssignTrain_Version]
GO
PRINT N'Dropping constraints from [dbo].[AisCallLogAgent]'
GO
ALTER TABLE [dbo].[AisCallLogAgent] DROP CONSTRAINT [DF_AisCallLogAgent_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisCallLogAgent]'
GO
ALTER TABLE [dbo].[AisCallLogAgent] DROP CONSTRAINT [DF_AisCallLogAgent_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisCallLogAgent]'
GO
ALTER TABLE [dbo].[AisCallLogAgent] DROP CONSTRAINT [DF_AisCallLogAgent_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[AisCallLogAgent]'
GO
ALTER TABLE [dbo].[AisCallLogAgent] DROP CONSTRAINT [DF_AisCallLogAgent_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[AisCallLogAgent]'
GO
ALTER TABLE [dbo].[AisCallLogAgent] DROP CONSTRAINT [DF_AisCallLogAgent_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[AisCallLogAgent]'
GO
ALTER TABLE [dbo].[AisCallLogAgent] DROP CONSTRAINT [DF_AisCallLogAgent_Version]
GO
PRINT N'Dropping constraints from [dbo].[AisImageProcessTracking]'
GO
ALTER TABLE [dbo].[AisImageProcessTracking] DROP CONSTRAINT [DF_AisImageProcessTracking_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisImageProcessTracking]'
GO
ALTER TABLE [dbo].[AisImageProcessTracking] DROP CONSTRAINT [DF_AisImageProcessTracking_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisImageProcessTracking]'
GO
ALTER TABLE [dbo].[AisImageProcessTracking] DROP CONSTRAINT [DF_AisImageProcessTracking_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[AisImageProcessTracking]'
GO
ALTER TABLE [dbo].[AisImageProcessTracking] DROP CONSTRAINT [DF_AisImageProcessTracking_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[AisImageProcessTracking]'
GO
ALTER TABLE [dbo].[AisImageProcessTracking] DROP CONSTRAINT [DF_AisImageProcessTracking_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[AisImageProcessTracking]'
GO
ALTER TABLE [dbo].[AisImageProcessTracking] DROP CONSTRAINT [DF_AisImageProcessTracking_Version]
GO
PRINT N'Dropping constraints from [dbo].[AisQueryBuilderTracking]'
GO
ALTER TABLE [dbo].[AisQueryBuilderTracking] DROP CONSTRAINT [DF_AisQueryBuilderTracking_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisQueryBuilderTracking]'
GO
ALTER TABLE [dbo].[AisQueryBuilderTracking] DROP CONSTRAINT [DF_AisQueryBuilderTracking_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisQueryBuilderTracking]'
GO
ALTER TABLE [dbo].[AisQueryBuilderTracking] DROP CONSTRAINT [DF_AisQueryBuilderTracking_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[AisQueryBuilderTracking]'
GO
ALTER TABLE [dbo].[AisQueryBuilderTracking] DROP CONSTRAINT [DF_AisQueryBuilderTracking_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[AisQueryBuilderTracking]'
GO
ALTER TABLE [dbo].[AisQueryBuilderTracking] DROP CONSTRAINT [DF_AisQueryBuilderTracking_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[AisQueryBuilderTracking]'
GO
ALTER TABLE [dbo].[AisQueryBuilderTracking] DROP CONSTRAINT [DF_AisQueryBuilderTracking_Version]
GO
PRINT N'Dropping constraints from [dbo].[AisRagDocuments]'
GO
ALTER TABLE [dbo].[AisRagDocuments] DROP CONSTRAINT [DF_AisRagDocuments_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisRagDocuments]'
GO
ALTER TABLE [dbo].[AisRagDocuments] DROP CONSTRAINT [DF_AisRagDocuments_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisRagDocuments]'
GO
ALTER TABLE [dbo].[AisRagDocuments] DROP CONSTRAINT [DF_AisRagDocuments_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[AisRagDocuments]'
GO
ALTER TABLE [dbo].[AisRagDocuments] DROP CONSTRAINT [DF_AisRagDocuments_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[AisRagDocuments]'
GO
ALTER TABLE [dbo].[AisRagDocuments] DROP CONSTRAINT [DF_AisRagDocuments_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[AisRagDocuments]'
GO
ALTER TABLE [dbo].[AisRagDocuments] DROP CONSTRAINT [DF_AisRagDocuments_Version]
GO
PRINT N'Dropping constraints from [dbo].[AisResultPredictionTrain]'
GO
ALTER TABLE [dbo].[AisResultPredictionTrain] DROP CONSTRAINT [DF_AisResultPredictionTrain_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisResultPredictionTrain]'
GO
ALTER TABLE [dbo].[AisResultPredictionTrain] DROP CONSTRAINT [DF_AisResultPredictionTrain_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisResultPredictionTrain]'
GO
ALTER TABLE [dbo].[AisResultPredictionTrain] DROP CONSTRAINT [DF_AisResultPredictionTrain_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[AisResultPredictionTrain]'
GO
ALTER TABLE [dbo].[AisResultPredictionTrain] DROP CONSTRAINT [DF_AisResultPredictionTrain_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[AisResultPredictionTrain]'
GO
ALTER TABLE [dbo].[AisResultPredictionTrain] DROP CONSTRAINT [DF_AisResultPredictionTrain_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[AisResultPredictionTrain]'
GO
ALTER TABLE [dbo].[AisResultPredictionTrain] DROP CONSTRAINT [DF_AisResultPredictionTrain_Version]
GO
PRINT N'Dropping constraints from [dbo].[AisSampleLogAgent]'
GO
ALTER TABLE [dbo].[AisSampleLogAgent] DROP CONSTRAINT [DF_AisSampleLogAgent_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisSampleLogAgent]'
GO
ALTER TABLE [dbo].[AisSampleLogAgent] DROP CONSTRAINT [DF_AisSampleLogAgent_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisSampleLogAgent]'
GO
ALTER TABLE [dbo].[AisSampleLogAgent] DROP CONSTRAINT [DF_AisSampleLogAgent_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[AisSampleLogAgent]'
GO
ALTER TABLE [dbo].[AisSampleLogAgent] DROP CONSTRAINT [DF_AisSampleLogAgent_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[AisSampleLogAgent]'
GO
ALTER TABLE [dbo].[AisSampleLogAgent] DROP CONSTRAINT [DF_AisSampleLogAgent_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[AisSampleLogAgent]'
GO
ALTER TABLE [dbo].[AisSampleLogAgent] DROP CONSTRAINT [DF_AisSampleLogAgent_Version]
GO
PRINT N'Dropping constraints from [dbo].[AisSchemaStructures]'
GO
ALTER TABLE [dbo].[AisSchemaStructures] DROP CONSTRAINT [DF_AisSchemaStructures_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisSchemaStructures]'
GO
ALTER TABLE [dbo].[AisSchemaStructures] DROP CONSTRAINT [DF_AisSchemaStructures_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisSchemaStructures]'
GO
ALTER TABLE [dbo].[AisSchemaStructures] DROP CONSTRAINT [DF_AisSchemaStructures_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[AisSchemaStructures]'
GO
ALTER TABLE [dbo].[AisSchemaStructures] DROP CONSTRAINT [DF_AisSchemaStructures_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[AisSchemaStructures]'
GO
ALTER TABLE [dbo].[AisSchemaStructures] DROP CONSTRAINT [DF_AisSchemaStructures_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[AisSchemaStructures]'
GO
ALTER TABLE [dbo].[AisSchemaStructures] DROP CONSTRAINT [DF_AisSchemaStructures_Version]
GO
PRINT N'Dropping constraints from [dbo].[AisViewCreationTracking]'
GO
ALTER TABLE [dbo].[AisViewCreationTracking] DROP CONSTRAINT [DF_AisViewCreationTracking_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisViewCreationTracking]'
GO
ALTER TABLE [dbo].[AisViewCreationTracking] DROP CONSTRAINT [DF_AisViewCreationTracking_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[AisViewCreationTracking]'
GO
ALTER TABLE [dbo].[AisViewCreationTracking] DROP CONSTRAINT [DF_AisViewCreationTracking_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[AisViewCreationTracking]'
GO
ALTER TABLE [dbo].[AisViewCreationTracking] DROP CONSTRAINT [DF_AisViewCreationTracking_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[AisViewCreationTracking]'
GO
ALTER TABLE [dbo].[AisViewCreationTracking] DROP CONSTRAINT [DF_AisViewCreationTracking_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[AisViewCreationTracking]'
GO
ALTER TABLE [dbo].[AisViewCreationTracking] DROP CONSTRAINT [DF_AisViewCreationTracking_Version]
GO
PRINT N'Dropping index [Idx_AisAnalystAssignTrain] from [dbo].[AisAnalystAssignTrain]'
GO
DROP INDEX [Idx_AisAnalystAssignTrain] ON [dbo].[AisAnalystAssignTrain]
GO
PRINT N'Dropping index [Idx_AisCallAssignTrain] from [dbo].[AisCallAssignTrain]'
GO
DROP INDEX [Idx_AisCallAssignTrain] ON [dbo].[AisCallAssignTrain]
GO
PRINT N'Dropping index [Idx_AisCallLogAgent_UserId_Status] from [dbo].[AisCallLogAgent]'
GO
DROP INDEX [Idx_AisCallLogAgent_UserId_Status] ON [dbo].[AisCallLogAgent]
GO
PRINT N'Dropping index [Idx_AisQueryBuilderTracking] from [dbo].[AisQueryBuilderTracking]'
GO
DROP INDEX [Idx_AisQueryBuilderTracking] ON [dbo].[AisQueryBuilderTracking]
GO
PRINT N'Dropping index [Idx_AisRagDocuments] from [dbo].[AisRagDocuments]'
GO
DROP INDEX [Idx_AisRagDocuments] ON [dbo].[AisRagDocuments]
GO
PRINT N'Dropping index [Idx_AisResultPredictionTrain] from [dbo].[AisResultPredictionTrain]'
GO
DROP INDEX [Idx_AisResultPredictionTrain] ON [dbo].[AisResultPredictionTrain]
GO
PRINT N'Dropping index [Idx_AisSampleLogAgent] from [dbo].[AisSampleLogAgent]'
GO
DROP INDEX [Idx_AisSampleLogAgent] ON [dbo].[AisSampleLogAgent]
GO
PRINT N'Dropping index [Idx_AisSchemaStructures] from [dbo].[AisSchemaStructures]'
GO
DROP INDEX [Idx_AisSchemaStructures] ON [dbo].[AisSchemaStructures]
GO
PRINT N'Dropping [dbo].[spAisSchemaStructureUpdate]'
GO
DROP PROCEDURE [dbo].[spAisSchemaStructureUpdate]
GO
PRINT N'Dropping [dbo].[spAisResultPredictTrainUpdate]'
GO
DROP PROCEDURE [dbo].[spAisResultPredictTrainUpdate]
GO
PRINT N'Dropping [dbo].[spAisCallAssignTrainUpdate]'
GO
DROP PROCEDURE [dbo].[spAisCallAssignTrainUpdate]
GO
PRINT N'Dropping [dbo].[spAisAnalystAssignTrainUpdate]'
GO
DROP PROCEDURE [dbo].[spAisAnalystAssignTrainUpdate]
GO
PRINT N'Dropping [dbo].[AisViewCreationTracking]'
GO
DROP TABLE [dbo].[AisViewCreationTracking]
GO
PRINT N'Dropping [dbo].[AisSchemaStructures]'
GO
DROP TABLE [dbo].[AisSchemaStructures]
GO
PRINT N'Dropping [dbo].[AisSampleLogAgent]'
GO
DROP TABLE [dbo].[AisSampleLogAgent]
GO
PRINT N'Dropping [dbo].[AisResultPredictionTrain]'
GO
DROP TABLE [dbo].[AisResultPredictionTrain]
GO
PRINT N'Dropping [dbo].[AisRagDocuments]'
GO
DROP TABLE [dbo].[AisRagDocuments]
GO
PRINT N'Dropping [dbo].[AisQueryBuilderTracking]'
GO
DROP TABLE [dbo].[AisQueryBuilderTracking]
GO
PRINT N'Dropping [dbo].[AisImageProcessTracking]'
GO
DROP TABLE [dbo].[AisImageProcessTracking]
GO
PRINT N'Dropping [dbo].[AisCallLogAgent]'
GO
DROP TABLE [dbo].[AisCallLogAgent]
GO
PRINT N'Dropping [dbo].[AisCallAssignTrain]'
GO
DROP TABLE [dbo].[AisCallAssignTrain]
GO
PRINT N'Dropping [dbo].[AisAnalystAssignTrain]'
GO
DROP TABLE [dbo].[AisAnalystAssignTrain]
GO

