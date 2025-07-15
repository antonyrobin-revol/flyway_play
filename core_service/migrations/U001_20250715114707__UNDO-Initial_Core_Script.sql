SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping foreign keys from [dbo].[CmnMessagesMultiLingual]'
GO
ALTER TABLE [dbo].[CmnMessagesMultiLingual] DROP CONSTRAINT [FK_CmnMessagesMultiLingualKeyCode]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnAuditDataTracking]'
GO
ALTER TABLE [dbo].[CmnAuditDataTracking] DROP CONSTRAINT [FK_CmnAuditTrackingAuditTrackingID]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnColumnProperty]'
GO
ALTER TABLE [dbo].[CmnColumnProperty] DROP CONSTRAINT [FK_CmnColumnPropertyColumnID]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnColumnsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnColumnsMultiLingual] DROP CONSTRAINT [FK_CmnColumnsMultiLingual]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [FK_CmnControlColumnsControlID]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnControlProperty]'
GO
ALTER TABLE [dbo].[CmnControlProperty] DROP CONSTRAINT [FK_CmnControlPropertyControlID]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnControlsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnControlsMultiLingual] DROP CONSTRAINT [FK_CmnControlsMultiLingual]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnFormSearchControl]'
GO
ALTER TABLE [dbo].[CmnFormSearchControl] DROP CONSTRAINT [FK_CmnFormSearchControlControlID]
GO
ALTER TABLE [dbo].[CmnFormSearchControl] DROP CONSTRAINT [FK_CmnFormSearchControlFormID]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [FK_CmnFormControlsGroupID]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnFormMultiLingual]'
GO
ALTER TABLE [dbo].[CmnFormMultiLingual] DROP CONSTRAINT [FK_CmnFormMultiLingual]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnRememberSearchControl]'
GO
ALTER TABLE [dbo].[CmnRememberSearchControl] DROP CONSTRAINT [FK_CmnRememberSearchControlSearchID]
GO
ALTER TABLE [dbo].[CmnRememberSearchControl] DROP CONSTRAINT [FK_CmnRememberSearchControlFormID]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnSearchControlColumns]'
GO
ALTER TABLE [dbo].[CmnSearchControlColumns] DROP CONSTRAINT [FK_CmnSearchControlColumnsSearchID]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnSearchMultiLingual]'
GO
ALTER TABLE [dbo].[CmnSearchMultiLingual] DROP CONSTRAINT [FK_CmnSearchMultiLingual]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnGridColumnsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnGridColumnsMultiLingual] DROP CONSTRAINT [FK_CmnGridColumnsMultiLingual]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnGroupMultiLingual]'
GO
ALTER TABLE [dbo].[CmnGroupMultiLingual] DROP CONSTRAINT [FK_CmnGroupMultiLingual]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnGroupBoxes]'
GO
ALTER TABLE [dbo].[CmnGroupBoxes] DROP CONSTRAINT [FK_CmnGroupBoxesTabID]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnRBSPermission]'
GO
ALTER TABLE [dbo].[CmnRBSPermission] DROP CONSTRAINT [FK_CmnRBSPermissionUserID]
GO
ALTER TABLE [dbo].[CmnRBSPermission] DROP CONSTRAINT [FK_CmnRBSPermissionFormID]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnRolePermission]'
GO
ALTER TABLE [dbo].[CmnRolePermission] DROP CONSTRAINT [FK_CmnRolePermissionFormID]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnSearchColumnsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnSearchColumnsMultiLingual] DROP CONSTRAINT [FK_CmnSearchColumnsMultiLingual]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnTabsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnTabsMultiLingual] DROP CONSTRAINT [FK_CmnTabsMultiLingual]
GO
PRINT N'Dropping foreign keys from [dbo].[CmnUserProfile]'
GO
ALTER TABLE [dbo].[CmnUserProfile] DROP CONSTRAINT [FK_CmnUserProfile]
GO
PRINT N'Dropping constraints from [dbo].[CmnAfterSaveDML]'
GO
ALTER TABLE [dbo].[CmnAfterSaveDML] DROP CONSTRAINT [PK_CmnAfterSaveDML]
GO
PRINT N'Dropping constraints from [dbo].[CmnApplicationErrors]'
GO
ALTER TABLE [dbo].[CmnApplicationErrors] DROP CONSTRAINT [PK_CmnApplicationErrors]
GO
PRINT N'Dropping constraints from [dbo].[CmnApplicationMessages]'
GO
ALTER TABLE [dbo].[CmnApplicationMessages] DROP CONSTRAINT [PK_CmnApplicationMessages]
GO
PRINT N'Dropping constraints from [dbo].[CmnAuditDataTracking]'
GO
ALTER TABLE [dbo].[CmnAuditDataTracking] DROP CONSTRAINT [PK_CmnAuditDataTracking]
GO
PRINT N'Dropping constraints from [dbo].[CmnAuditTracking]'
GO
ALTER TABLE [dbo].[CmnAuditTracking] DROP CONSTRAINT [PK_CmnAuditTracking]
GO
PRINT N'Dropping constraints from [dbo].[CmnBuildInstallationHistory]'
GO
ALTER TABLE [dbo].[CmnBuildInstallationHistory] DROP CONSTRAINT [PK_CmnBuildInstallationHistory]
GO
PRINT N'Dropping constraints from [dbo].[CmnCodeMasterMultiLingual]'
GO
ALTER TABLE [dbo].[CmnCodeMasterMultiLingual] DROP CONSTRAINT [PK_CmnCodeMasterMultiLingual]
GO
PRINT N'Dropping constraints from [dbo].[CmnColumnProperty]'
GO
ALTER TABLE [dbo].[CmnColumnProperty] DROP CONSTRAINT [PK_CmnColumnProperty]
GO
PRINT N'Dropping constraints from [dbo].[CmnColumnsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnColumnsMultiLingual] DROP CONSTRAINT [PK_CmnColumnsMultiLingual]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[CmnControlAutoGenerateConfig] DROP CONSTRAINT [PK_CmnControlAutoGenerateConfig]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[CmnControlCodeAutoConfig] DROP CONSTRAINT [PK_CmnControlCodeAutoConfig]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [PK_CmnControlColumns]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlProperty]'
GO
ALTER TABLE [dbo].[CmnControlProperty] DROP CONSTRAINT [PK_CmnControlProperty]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnControlsMultiLingual] DROP CONSTRAINT [PK_CmnControlsMultiLingual]
GO
PRINT N'Dropping constraints from [dbo].[CmnDatabaseTableSettings]'
GO
ALTER TABLE [dbo].[CmnDatabaseTableSettings] DROP CONSTRAINT [PK_CmnDatabaseTableSettings]
GO
PRINT N'Dropping constraints from [dbo].[CmnFileUpload]'
GO
ALTER TABLE [dbo].[CmnFileUpload] DROP CONSTRAINT [PK_CmnFileUpload]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormButtonProperties]'
GO
ALTER TABLE [dbo].[CmnFormButtonProperties] DROP CONSTRAINT [PK_CmnFormButtonProperties]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [PK_CmnFormControls]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormErrors]'
GO
ALTER TABLE [dbo].[CmnFormErrors] DROP CONSTRAINT [PK_CmnFormErrors]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormMultiLingual]'
GO
ALTER TABLE [dbo].[CmnFormMultiLingual] DROP CONSTRAINT [PK_CmnFormMultiLingual]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormQuery]'
GO
ALTER TABLE [dbo].[CmnFormQuery] DROP CONSTRAINT [PK_CmnFormQuery]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormSearchControl]'
GO
ALTER TABLE [dbo].[CmnFormSearchControl] DROP CONSTRAINT [PK_CmnFormSearchControl]
GO
PRINT N'Dropping constraints from [dbo].[CmnGUIKeywords]'
GO
ALTER TABLE [dbo].[CmnGUIKeywords] DROP CONSTRAINT [PK_CmnGUIKeywords]
GO
PRINT N'Dropping constraints from [dbo].[CmnGUIMultiLingual]'
GO
ALTER TABLE [dbo].[CmnGUIMultiLingual] DROP CONSTRAINT [PK_CmnGUIMultiLingual]
GO
PRINT N'Dropping constraints from [dbo].[CmnGeneralProperty]'
GO
ALTER TABLE [dbo].[CmnGeneralProperty] DROP CONSTRAINT [PK_CmnGeneralProperty]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridColumnsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnGridColumnsMultiLingual] DROP CONSTRAINT [PK_CmnGridColumnsMultiLingual]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [PK_CmnGridControlColumns]
GO
PRINT N'Dropping constraints from [dbo].[CmnGroupBoxes]'
GO
ALTER TABLE [dbo].[CmnGroupBoxes] DROP CONSTRAINT [PK_CmnGroupBoxes]
GO
PRINT N'Dropping constraints from [dbo].[CmnGroupMultiLingual]'
GO
ALTER TABLE [dbo].[CmnGroupMultiLingual] DROP CONSTRAINT [PK_CmnGroupMultiLingual]
GO
PRINT N'Dropping constraints from [dbo].[CmnHelpTemplate]'
GO
ALTER TABLE [dbo].[CmnHelpTemplate] DROP CONSTRAINT [PK_CmnHelpTemplate]
GO
PRINT N'Dropping constraints from [dbo].[CmnOTPTracking]'
GO
ALTER TABLE [dbo].[CmnOTPTracking] DROP CONSTRAINT [PK_CmnOTPTracking]
GO
PRINT N'Dropping constraints from [dbo].[CmnPasswordPolicy]'
GO
ALTER TABLE [dbo].[CmnPasswordPolicy] DROP CONSTRAINT [PK_CmnPasswordPolicy]
GO
PRINT N'Dropping constraints from [dbo].[CmnPrefixSuffixMaster]'
GO
ALTER TABLE [dbo].[CmnPrefixSuffixMaster] DROP CONSTRAINT [PK_CmnPrefixSuffixMaster]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSDataVariablePermission]'
GO
ALTER TABLE [dbo].[CmnRBSDataVariablePermission] DROP CONSTRAINT [PK_CmnRBSDataVariablePermission]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSGroupsDataVariable]'
GO
ALTER TABLE [dbo].[CmnRBSGroupsDataVariable] DROP CONSTRAINT [PK_CmnRBSGroupsDataVariable]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSRoleDataVariablePermission]'
GO
ALTER TABLE [dbo].[CmnRBSRoleDataVariablePermission] DROP CONSTRAINT [PK_CmnRBSRoleDataVariablePermission]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroupForms]'
GO
ALTER TABLE [dbo].[CmnRbsGroupForms] DROP CONSTRAINT [PK_CmnRbsGroupForms]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroups]'
GO
ALTER TABLE [dbo].[CmnRbsGroups] DROP CONSTRAINT [PK_CmnRbsGroups]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchColumnsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnSearchColumnsMultiLingual] DROP CONSTRAINT [PK_CmnSearchColumnsMultiLingual]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchControlColumns]'
GO
ALTER TABLE [dbo].[CmnSearchControlColumns] DROP CONSTRAINT [PK__CmnSearchControl__444B1371]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchMultiLingual]'
GO
ALTER TABLE [dbo].[CmnSearchMultiLingual] DROP CONSTRAINT [PK_CmnSearchMultiLingual]
GO
PRINT N'Dropping constraints from [dbo].[CmnSequenceFeeder]'
GO
ALTER TABLE [dbo].[CmnSequenceFeeder] DROP CONSTRAINT [PK_CmnSequenceFeeder]
GO
PRINT N'Dropping constraints from [dbo].[CmnSilentLoginTracking]'
GO
ALTER TABLE [dbo].[CmnSilentLoginTracking] DROP CONSTRAINT [PK_CmnSilentLoginTracking]
GO
PRINT N'Dropping constraints from [dbo].[CmnTabsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnTabsMultiLingual] DROP CONSTRAINT [PK_CmnTabsMultiLingual]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserContacts]'
GO
ALTER TABLE [dbo].[CmnUserContacts] DROP CONSTRAINT [PK_CmnUserContacts]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserProfile]'
GO
ALTER TABLE [dbo].[CmnUserProfile] DROP CONSTRAINT [PK_CmnUserProfile]
GO
PRINT N'Dropping constraints from [dbo].[MstClientContacts]'
GO
ALTER TABLE [dbo].[MstClientContacts] DROP CONSTRAINT [PK_MstClientContacts]
GO
PRINT N'Dropping constraints from [dbo].[MstClientDetails]'
GO
ALTER TABLE [dbo].[MstClientDetails] DROP CONSTRAINT [PK_MstClientDetails]
GO
PRINT N'Dropping constraints from [dbo].[MstCompanyDetails]'
GO
ALTER TABLE [dbo].[MstCompanyDetails] DROP CONSTRAINT [PK_MstCompanyDetails]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerContacts]'
GO
ALTER TABLE [dbo].[MstManufacturerContacts] DROP CONSTRAINT [PK_MstManufacturerContacts]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerDetails]'
GO
ALTER TABLE [dbo].[MstManufacturerDetails] DROP CONSTRAINT [PK_MstManufacturerDetails]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierContacts]'
GO
ALTER TABLE [dbo].[MstSupplierContacts] DROP CONSTRAINT [PK_MstSupplierContacts]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierDetails]'
GO
ALTER TABLE [dbo].[MstSupplierDetails] DROP CONSTRAINT [PK_MstSupplierDetails]
GO
PRINT N'Dropping constraints from [dbo].[SrvApiTransactionTracking]'
GO
ALTER TABLE [dbo].[SrvApiTransactionTracking] DROP CONSTRAINT [PK_SrvApiTransactionTracking]
GO
PRINT N'Dropping constraints from [dbo].[SrvCustomReportTracking]'
GO
ALTER TABLE [dbo].[SrvCustomReportTracking] DROP CONSTRAINT [PK_SrvCustomReportTracking]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncColumnConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncColumnConfiguration] DROP CONSTRAINT [PK_SrvDataSyncColumnConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncConfiguration] DROP CONSTRAINT [PK_SrvDataSyncConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncTracking]'
GO
ALTER TABLE [dbo].[SrvDataSyncTracking] DROP CONSTRAINT [PK_SrvDataSyncTracking]
GO
PRINT N'Dropping constraints from [dbo].[SrvFileCopierConfiguration]'
GO
ALTER TABLE [dbo].[SrvFileCopierConfiguration] DROP CONSTRAINT [PK_SrvFileCopierConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportConfiguration]'
GO
ALTER TABLE [dbo].[SrvSsrsReportConfiguration] DROP CONSTRAINT [PK_SrvSsrsReportConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportDataSources]'
GO
ALTER TABLE [dbo].[SrvSsrsReportDataSources] DROP CONSTRAINT [PK_SrvSsrsReportDataSources]
GO
PRINT N'Dropping constraints from [dbo].[CmnAfterSaveDML]'
GO
ALTER TABLE [dbo].[CmnAfterSaveDML] DROP CONSTRAINT [DF_CmnAfterSaveDML_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnAfterSaveDML]'
GO
ALTER TABLE [dbo].[CmnAfterSaveDML] DROP CONSTRAINT [DF_CmnAfterSaveDML_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnAfterSaveDML]'
GO
ALTER TABLE [dbo].[CmnAfterSaveDML] DROP CONSTRAINT [DF_CmnAfterSaveDML_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnAfterSaveDML]'
GO
ALTER TABLE [dbo].[CmnAfterSaveDML] DROP CONSTRAINT [DF_CmnAfterSaveDML_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnAfterSaveDML]'
GO
ALTER TABLE [dbo].[CmnAfterSaveDML] DROP CONSTRAINT [DF_CmnAfterSaveDML_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnAfterSaveDML]'
GO
ALTER TABLE [dbo].[CmnAfterSaveDML] DROP CONSTRAINT [DF_CmnAfterSaveDML_Version]
GO
PRINT N'Dropping constraints from [dbo].[CmnApplicationMessages]'
GO
ALTER TABLE [dbo].[CmnApplicationMessages] DROP CONSTRAINT [DF_CmnApplicationMessages_Changeable]
GO
PRINT N'Dropping constraints from [dbo].[CmnApplicationMessages]'
GO
ALTER TABLE [dbo].[CmnApplicationMessages] DROP CONSTRAINT [DF_CmnApplicationMessages_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnApplicationMessages]'
GO
ALTER TABLE [dbo].[CmnApplicationMessages] DROP CONSTRAINT [DF_CmnApplicationMessages_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnApplicationMessages]'
GO
ALTER TABLE [dbo].[CmnApplicationMessages] DROP CONSTRAINT [DF_CmnApplicationMessages_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnAuditDataTracking]'
GO
ALTER TABLE [dbo].[CmnAuditDataTracking] DROP CONSTRAINT [DF_CmnAuditDataTracking_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnAuditDataTracking]'
GO
ALTER TABLE [dbo].[CmnAuditDataTracking] DROP CONSTRAINT [DF_CmnAuditDataTracking_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnAuditDataTracking]'
GO
ALTER TABLE [dbo].[CmnAuditDataTracking] DROP CONSTRAINT [DF__CmnAuditD__SyncE__474499D1]
GO
PRINT N'Dropping constraints from [dbo].[CmnAuditTracking]'
GO
ALTER TABLE [dbo].[CmnAuditTracking] DROP CONSTRAINT [DF_CmnAuditTracking_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnAuditTracking]'
GO
ALTER TABLE [dbo].[CmnAuditTracking] DROP CONSTRAINT [DF_CmnAuditTracking_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnCodeMasterMultiLingual]'
GO
ALTER TABLE [dbo].[CmnCodeMasterMultiLingual] DROP CONSTRAINT [DF_CmnCodeMasterMultiLingual_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnCodeMaster]'
GO
ALTER TABLE [dbo].[CmnCodeMaster] DROP CONSTRAINT [DF__CmnCodeMa__SubTy__157FBEFC]
GO
PRINT N'Dropping constraints from [dbo].[CmnCodeMaster]'
GO
ALTER TABLE [dbo].[CmnCodeMaster] DROP CONSTRAINT [DF__CmnCodeMa__Butto__7CC50B5F]
GO
PRINT N'Dropping constraints from [dbo].[CmnCodeMaster]'
GO
ALTER TABLE [dbo].[CmnCodeMaster] DROP CONSTRAINT [DF__CmnCodeMa__IsMul__63CD7C5B]
GO
PRINT N'Dropping constraints from [dbo].[CmnCodeMaster]'
GO
ALTER TABLE [dbo].[CmnCodeMaster] DROP CONSTRAINT [DF__CmnCodeMa__IsDml__1690B651]
GO
PRINT N'Dropping constraints from [dbo].[CmnColumnProperty]'
GO
ALTER TABLE [dbo].[CmnColumnProperty] DROP CONSTRAINT [DF_CmnColumnProperty_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnColumnProperty]'
GO
ALTER TABLE [dbo].[CmnColumnProperty] DROP CONSTRAINT [DF_CmnColumnProperty_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnColumnsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnColumnsMultiLingual] DROP CONSTRAINT [DF_CmnColumnsMultiLingual_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[CmnControlAutoGenerateConfig] DROP CONSTRAINT [DF_CmnControlAutoGenerateConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[CmnControlAutoGenerateConfig] DROP CONSTRAINT [DF_CmnControlAutoGenerateConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[CmnControlAutoGenerateConfig] DROP CONSTRAINT [DF_CmnControlAutoGenerateConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[CmnControlAutoGenerateConfig] DROP CONSTRAINT [DF_CmnControlAutoGenerateConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[CmnControlAutoGenerateConfig] DROP CONSTRAINT [DF_CmnControlAutoGenerateConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[CmnControlAutoGenerateConfig] DROP CONSTRAINT [DF_CmnControlAutoGenerateConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[CmnControlCodeAutoConfig] DROP CONSTRAINT [DF_CmnControlCodeAutoConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[CmnControlCodeAutoConfig] DROP CONSTRAINT [DF_CmnControlCodeAutoConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[CmnControlCodeAutoConfig] DROP CONSTRAINT [DF_CmnControlCodeAutoConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[CmnControlCodeAutoConfig] DROP CONSTRAINT [DF_CmnControlCodeAutoConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[CmnControlCodeAutoConfig] DROP CONSTRAINT [DF_CmnControlCodeAutoConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[CmnControlCodeAutoConfig] DROP CONSTRAINT [DF_CmnControlCodeAutoConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF_CmnControlColumns_Readonly]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF_CmnControlColumns_IsMandatory]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF_CmnControlColumns_SearchApplicable]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF_CmnControlColumns_SelectApplicable]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF_CmnControlColumns_IsIdentity]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF_CmnControlColumns_IsDmlControl]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF__CmnContro__Depen__20F0F209]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF_CmnControlColumns_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF_CmnControlColumns_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF_CmnControlColumns_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF_CmnControlColumns_FkShowActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF_CmnControlColumns_VersionCheck]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF_CmnControlColumns_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF_CmnControlColumns_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlColumns]'
GO
ALTER TABLE [dbo].[CmnControlColumns] DROP CONSTRAINT [DF__CmnContro__IsNoU__44C3BFAE]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlProperty]'
GO
ALTER TABLE [dbo].[CmnControlProperty] DROP CONSTRAINT [DF_CmnControlProperty_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlProperty]'
GO
ALTER TABLE [dbo].[CmnControlProperty] DROP CONSTRAINT [DF_CmnControlProperty_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnControlsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnControlsMultiLingual] DROP CONSTRAINT [DF_CmnControlsMultiLingual_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnDMLParameterProcess]'
GO
ALTER TABLE [dbo].[CmnDMLParameterProcess] DROP CONSTRAINT [DF_CmnDMLParameterProcess_IsNoAdd]
GO
PRINT N'Dropping constraints from [dbo].[CmnDMLParameterProcess]'
GO
ALTER TABLE [dbo].[CmnDMLParameterProcess] DROP CONSTRAINT [DF_CmnDMLParameterProcess_IsNoUpdate]
GO
PRINT N'Dropping constraints from [dbo].[CmnDMLParameterProcess]'
GO
ALTER TABLE [dbo].[CmnDMLParameterProcess] DROP CONSTRAINT [DF__CmnDMLPar__IsPar__18191748]
GO
PRINT N'Dropping constraints from [dbo].[CmnFileUpload]'
GO
ALTER TABLE [dbo].[CmnFileUpload] DROP CONSTRAINT [DF_CmnFileUpload_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnFileUpload]'
GO
ALTER TABLE [dbo].[CmnFileUpload] DROP CONSTRAINT [DF_CmnFileUpload_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormButtonProperties]'
GO
ALTER TABLE [dbo].[CmnFormButtonProperties] DROP CONSTRAINT [DF__CmnFormBu__IsMob__19B0237]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormButtonProperties]'
GO
ALTER TABLE [dbo].[CmnFormButtonProperties] DROP CONSTRAINT [DF_CmnFormButtonProperties_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormButtonProperties]'
GO
ALTER TABLE [dbo].[CmnFormButtonProperties] DROP CONSTRAINT [DF_CmnFormButtonProperties_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormButtonProperties]'
GO
ALTER TABLE [dbo].[CmnFormButtonProperties] DROP CONSTRAINT [DF_CmnFormButtonProperties_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormButtonProperties]'
GO
ALTER TABLE [dbo].[CmnFormButtonProperties] DROP CONSTRAINT [DF_CmnFormButtonProperties_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormButtonProperties]'
GO
ALTER TABLE [dbo].[CmnFormButtonProperties] DROP CONSTRAINT [DF_CmnFormButtonProperties_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormButtonProperties]'
GO
ALTER TABLE [dbo].[CmnFormButtonProperties] DROP CONSTRAINT [DF_CmnFormButtonProperties_Version]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [DF_CmnFormControls_SearchApplicable]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [DF_CmnFormControls_IsEncrypt]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [DF_CmnFormControls_IsReturnFill]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [DF_CmnFormControls_IsNoAdd]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [DF_CmnFormControls_IsNoUpdate]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [DF_CmnFormControls_FillType]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [DF_CmnFormControls_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [DF_CmnFormControls_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [DF_CmnFormControls_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [DF_CmnFormControls_FkShowActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [DF_CmnFormControls_VersionCheck]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [DF_CmnFormControls_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormControls]'
GO
ALTER TABLE [dbo].[CmnFormControls] DROP CONSTRAINT [DF_CmnFormControls_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormMultiLingual]'
GO
ALTER TABLE [dbo].[CmnFormMultiLingual] DROP CONSTRAINT [DF_CmnFormMultiLingual_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormSearchControl]'
GO
ALTER TABLE [dbo].[CmnFormSearchControl] DROP CONSTRAINT [DF_CmnFormSearchControl_MaxLength]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormSearchControl]'
GO
ALTER TABLE [dbo].[CmnFormSearchControl] DROP CONSTRAINT [DF_CmnFormSearchControl_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormSearchControl]'
GO
ALTER TABLE [dbo].[CmnFormSearchControl] DROP CONSTRAINT [DF_CmnFormSearchControl_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormSearchControl]'
GO
ALTER TABLE [dbo].[CmnFormSearchControl] DROP CONSTRAINT [DF_CmnFormSearchControl_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormSearchControl]'
GO
ALTER TABLE [dbo].[CmnFormSearchControl] DROP CONSTRAINT [DF_CmnFormSearchControl_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormSearchControl]'
GO
ALTER TABLE [dbo].[CmnFormSearchControl] DROP CONSTRAINT [DF_CmnFormSearchControl_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnFormTabs]'
GO
ALTER TABLE [dbo].[CmnFormTabs] DROP CONSTRAINT [DF__CmnFormTa__IsMob__33E74997]
GO
PRINT N'Dropping constraints from [dbo].[CmnGUIKeywords]'
GO
ALTER TABLE [dbo].[CmnGUIKeywords] DROP CONSTRAINT [DF_CmnGUIKeywords_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnGUIKeywords]'
GO
ALTER TABLE [dbo].[CmnGUIKeywords] DROP CONSTRAINT [DF_CmnGUIKeywords_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnGUIKeywords]'
GO
ALTER TABLE [dbo].[CmnGUIKeywords] DROP CONSTRAINT [DF_CmnGUIKeywords_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnGUIMultiLingual]'
GO
ALTER TABLE [dbo].[CmnGUIMultiLingual] DROP CONSTRAINT [DF_CmnGUIMultiLingual_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnGUIMultiLingual]'
GO
ALTER TABLE [dbo].[CmnGUIMultiLingual] DROP CONSTRAINT [DF_CmnGUIMultiLingual_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnGUIMultiLingual]'
GO
ALTER TABLE [dbo].[CmnGUIMultiLingual] DROP CONSTRAINT [DF_CmnGUIMultiLingual_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnGeneralProperty]'
GO
ALTER TABLE [dbo].[CmnGeneralProperty] DROP CONSTRAINT [DF_CmnGeneralProperty_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnGeneralProperty]'
GO
ALTER TABLE [dbo].[CmnGeneralProperty] DROP CONSTRAINT [DF_CmnGeneralProperty_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridColumnsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnGridColumnsMultiLingual] DROP CONSTRAINT [DF_CmnGridColumnsMultiLingual_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF_CmnGridControlColumns_Readonly]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF_CmnGridControlColumns_IsMandatory]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF_CmnGridControlColumns_SearchApplicable]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF_CmnGridControlColumns_SelectApplicable]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF_CmnGridControlColumns_IsIdentity]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF_CmnGridControlColumns_IsDmlControl]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF__CmnGridCo__IsDat__1EE34205]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF__CmnGridCo__IsCur__69527B23]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF__CmnGridCo__Depen__18FE9855]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF_CmnGridControlColumns_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF_CmnGridControlColumns_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF_CmnGridControlColumns_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF_CmnGridControlColumns_FkShowActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF_CmnGridControlColumns_VersionCheck]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF_CmnGridControlColumns_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnGridControlColumns]'
GO
ALTER TABLE [dbo].[CmnGridControlColumns] DROP CONSTRAINT [DF_CmnGridControlColumns_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnGroupBoxes]'
GO
ALTER TABLE [dbo].[CmnGroupBoxes] DROP CONSTRAINT [DF__CmnGroupB__IsMob__246AD526]
GO
PRINT N'Dropping constraints from [dbo].[CmnGroupBoxes]'
GO
ALTER TABLE [dbo].[CmnGroupBoxes] DROP CONSTRAINT [DF_CmnGroupBoxes_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnGroupBoxes]'
GO
ALTER TABLE [dbo].[CmnGroupBoxes] DROP CONSTRAINT [DF_CmnGroupBoxes_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnGroupMultiLingual]'
GO
ALTER TABLE [dbo].[CmnGroupMultiLingual] DROP CONSTRAINT [DF_CmnGroupMultiLingual_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnHelpTemplate]'
GO
ALTER TABLE [dbo].[CmnHelpTemplate] DROP CONSTRAINT [DF_CmnHelpTemplate_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnHelpTemplate]'
GO
ALTER TABLE [dbo].[CmnHelpTemplate] DROP CONSTRAINT [DF_CmnHelpTemplate_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[CmnHelpTemplate]'
GO
ALTER TABLE [dbo].[CmnHelpTemplate] DROP CONSTRAINT [DF_CmnHelpTemplate_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnHelpTemplate]'
GO
ALTER TABLE [dbo].[CmnHelpTemplate] DROP CONSTRAINT [DF_CmnHelpTemplate_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[CmnHelpTemplate]'
GO
ALTER TABLE [dbo].[CmnHelpTemplate] DROP CONSTRAINT [DF_CmnHelpTemplate_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnHelpTemplate]'
GO
ALTER TABLE [dbo].[CmnHelpTemplate] DROP CONSTRAINT [DF_CmnHelpTemplate_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnHelpTemplate]'
GO
ALTER TABLE [dbo].[CmnHelpTemplate] DROP CONSTRAINT [DF_CmnHelpTemplate_Version]
GO
PRINT N'Dropping constraints from [dbo].[CmnHelpTemplate]'
GO
ALTER TABLE [dbo].[CmnHelpTemplate] DROP CONSTRAINT [DF_CmnHelpTemplate_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnMessagesMultiLingual]'
GO
ALTER TABLE [dbo].[CmnMessagesMultiLingual] DROP CONSTRAINT [DF_CmnMessagesMultiLingual_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnMessagesMultiLingual]'
GO
ALTER TABLE [dbo].[CmnMessagesMultiLingual] DROP CONSTRAINT [DF_CmnMessagesMultiLingual_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnMessagesMultiLingual]'
GO
ALTER TABLE [dbo].[CmnMessagesMultiLingual] DROP CONSTRAINT [DF_CmnMessagesMultiLingual_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnMessagesMultiLingual]'
GO
ALTER TABLE [dbo].[CmnMessagesMultiLingual] DROP CONSTRAINT [DF_CmnMessagesMultiLingual_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnMessagesMultiLingual]'
GO
ALTER TABLE [dbo].[CmnMessagesMultiLingual] DROP CONSTRAINT [DF_CmnMessagesMultiLingual_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnPasswordHistory]'
GO
ALTER TABLE [dbo].[CmnPasswordHistory] DROP CONSTRAINT [DF_CmnPasswordHistory_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnPasswordPolicy]'
GO
ALTER TABLE [dbo].[CmnPasswordPolicy] DROP CONSTRAINT [DF_CmnPasswordPolicy_PrevPwdRetrieveCount]
GO
PRINT N'Dropping constraints from [dbo].[CmnPasswordPolicy]'
GO
ALTER TABLE [dbo].[CmnPasswordPolicy] DROP CONSTRAINT [DF_CmnPasswordPolicy_LicenseValidationBasisID]
GO
PRINT N'Dropping constraints from [dbo].[CmnPasswordPolicy]'
GO
ALTER TABLE [dbo].[CmnPasswordPolicy] DROP CONSTRAINT [DF_CmnPasswordPolicy_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnPasswordPolicy]'
GO
ALTER TABLE [dbo].[CmnPasswordPolicy] DROP CONSTRAINT [DF_CmnPasswordPolicy_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnPasswordPolicy]'
GO
ALTER TABLE [dbo].[CmnPasswordPolicy] DROP CONSTRAINT [DF_CmnPasswordPolicy_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnPasswordPolicy]'
GO
ALTER TABLE [dbo].[CmnPasswordPolicy] DROP CONSTRAINT [DF_CmnPasswordPolicy_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnPasswordPolicy]'
GO
ALTER TABLE [dbo].[CmnPasswordPolicy] DROP CONSTRAINT [DF_CmnPasswordPolicy_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnPasswordPolicy]'
GO
ALTER TABLE [dbo].[CmnPasswordPolicy] DROP CONSTRAINT [DF_CmnPasswordPolicy_Version]
GO
PRINT N'Dropping constraints from [dbo].[CmnPasswordPolicy]'
GO
ALTER TABLE [dbo].[CmnPasswordPolicy] DROP CONSTRAINT [DF_CmnPasswordPolicy_PasswordResetType]
GO
PRINT N'Dropping constraints from [dbo].[CmnPrefixSuffixMaster]'
GO
ALTER TABLE [dbo].[CmnPrefixSuffixMaster] DROP CONSTRAINT [DF_CmnPrefixSuffixMaster_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnPrefixSuffixMaster]'
GO
ALTER TABLE [dbo].[CmnPrefixSuffixMaster] DROP CONSTRAINT [DF_CmnPrefixSuffixMaster_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnPrefixSuffixMaster]'
GO
ALTER TABLE [dbo].[CmnPrefixSuffixMaster] DROP CONSTRAINT [DF_CmnPrefixSuffixMaster_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnPrefixSuffixMaster]'
GO
ALTER TABLE [dbo].[CmnPrefixSuffixMaster] DROP CONSTRAINT [DF_CmnPrefixSuffixMaster_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnPrefixSuffixMaster]'
GO
ALTER TABLE [dbo].[CmnPrefixSuffixMaster] DROP CONSTRAINT [DF_CmnPrefixSuffixMaster_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnPrefixSuffixMaster]'
GO
ALTER TABLE [dbo].[CmnPrefixSuffixMaster] DROP CONSTRAINT [DF_CmnPrefixSuffixMaster_Version]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSDataVariablePermission]'
GO
ALTER TABLE [dbo].[CmnRBSDataVariablePermission] DROP CONSTRAINT [DF_CmnRBSDataVariablePermission_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSDataVariablePermission]'
GO
ALTER TABLE [dbo].[CmnRBSDataVariablePermission] DROP CONSTRAINT [DF_CmnRBSDataVariablePermission_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSDataVariablePermission]'
GO
ALTER TABLE [dbo].[CmnRBSDataVariablePermission] DROP CONSTRAINT [DF_CmnRBSDataVariablePermission_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSGroupsDataVariable]'
GO
ALTER TABLE [dbo].[CmnRBSGroupsDataVariable] DROP CONSTRAINT [DF_CmnRBSGroupsDataVariable_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSGroupsDataVariable]'
GO
ALTER TABLE [dbo].[CmnRBSGroupsDataVariable] DROP CONSTRAINT [DF_CmnRBSGroupsDataVariable_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSGroupsDataVariable]'
GO
ALTER TABLE [dbo].[CmnRBSGroupsDataVariable] DROP CONSTRAINT [DF_CmnRBSGroupsDataVariable_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSGroupsDataVariable]'
GO
ALTER TABLE [dbo].[CmnRBSGroupsDataVariable] DROP CONSTRAINT [DF_CmnRBSGroupsDataVariable_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSGroupsDataVariable]'
GO
ALTER TABLE [dbo].[CmnRBSGroupsDataVariable] DROP CONSTRAINT [DF_CmnRBSGroupsDataVariable_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSGroupsDataVariable]'
GO
ALTER TABLE [dbo].[CmnRBSGroupsDataVariable] DROP CONSTRAINT [DF_CmnRBSGroupsDataVariable_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSGroupsDataVariable]'
GO
ALTER TABLE [dbo].[CmnRBSGroupsDataVariable] DROP CONSTRAINT [DF_CmnRBSGroupsDataVariable_Version]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSGroupsDataVariable]'
GO
ALTER TABLE [dbo].[CmnRBSGroupsDataVariable] DROP CONSTRAINT [DF_CmnRBSGroupsDataVariable_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSPermission]'
GO
ALTER TABLE [dbo].[CmnRBSPermission] DROP CONSTRAINT [DF_CmnRBSPermission_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSPermission]'
GO
ALTER TABLE [dbo].[CmnRBSPermission] DROP CONSTRAINT [DF_CmnRBSPermission_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSPermission]'
GO
ALTER TABLE [dbo].[CmnRBSPermission] DROP CONSTRAINT [DF_CmnRBSPermission_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSRoleDataVariablePermission]'
GO
ALTER TABLE [dbo].[CmnRBSRoleDataVariablePermission] DROP CONSTRAINT [DF_CmnRBSRoleDataVariablePermission_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSRoleDataVariablePermission]'
GO
ALTER TABLE [dbo].[CmnRBSRoleDataVariablePermission] DROP CONSTRAINT [DF_CmnRBSRoleDataVariablePermission_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRBSRoleDataVariablePermission]'
GO
ALTER TABLE [dbo].[CmnRBSRoleDataVariablePermission] DROP CONSTRAINT [DF_CmnRBSRoleDataVariablePermission_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroupForms]'
GO
ALTER TABLE [dbo].[CmnRbsGroupForms] DROP CONSTRAINT [DF_CmnRbsGroupForms_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroupForms]'
GO
ALTER TABLE [dbo].[CmnRbsGroupForms] DROP CONSTRAINT [DF_CmnRbsGroupForms_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroupForms]'
GO
ALTER TABLE [dbo].[CmnRbsGroupForms] DROP CONSTRAINT [DF_CmnRbsGroupForms_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroupForms]'
GO
ALTER TABLE [dbo].[CmnRbsGroupForms] DROP CONSTRAINT [DF_CmnRbsGroupForms_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroupForms]'
GO
ALTER TABLE [dbo].[CmnRbsGroupForms] DROP CONSTRAINT [DF_CmnRbsGroupForms_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroupForms]'
GO
ALTER TABLE [dbo].[CmnRbsGroupForms] DROP CONSTRAINT [DF_CmnRbsGroupForms_Version]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroups]'
GO
ALTER TABLE [dbo].[CmnRbsGroups] DROP CONSTRAINT [DF_CmnRbsGroups_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroups]'
GO
ALTER TABLE [dbo].[CmnRbsGroups] DROP CONSTRAINT [DF_CmnRbsGroups_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroups]'
GO
ALTER TABLE [dbo].[CmnRbsGroups] DROP CONSTRAINT [DF_CmnRbsGroups_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroups]'
GO
ALTER TABLE [dbo].[CmnRbsGroups] DROP CONSTRAINT [DF_CmnRbsGroups_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroups]'
GO
ALTER TABLE [dbo].[CmnRbsGroups] DROP CONSTRAINT [DF_CmnRbsGroups_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnRbsGroups]'
GO
ALTER TABLE [dbo].[CmnRbsGroups] DROP CONSTRAINT [DF_CmnRbsGroups_Version]
GO
PRINT N'Dropping constraints from [dbo].[CmnRolePermission]'
GO
ALTER TABLE [dbo].[CmnRolePermission] DROP CONSTRAINT [DF_CmnRolePermission_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRolePermission]'
GO
ALTER TABLE [dbo].[CmnRolePermission] DROP CONSTRAINT [DF_CmnRolePermission_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRolePermission]'
GO
ALTER TABLE [dbo].[CmnRolePermission] DROP CONSTRAINT [DF_CmnRolePermission_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnRoleSettings]'
GO
ALTER TABLE [dbo].[CmnRoleSettings] DROP CONSTRAINT [DF_CmnRoleSettings_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRoleSettings]'
GO
ALTER TABLE [dbo].[CmnRoleSettings] DROP CONSTRAINT [DF_CmnRoleSettings_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[CmnRoleSettings]'
GO
ALTER TABLE [dbo].[CmnRoleSettings] DROP CONSTRAINT [DF_CmnRoleSettings_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnRoleSettings]'
GO
ALTER TABLE [dbo].[CmnRoleSettings] DROP CONSTRAINT [DF_CmnRoleSettings_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[CmnRoleSettings]'
GO
ALTER TABLE [dbo].[CmnRoleSettings] DROP CONSTRAINT [DF_CmnRoleSettings_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnRoleSettings]'
GO
ALTER TABLE [dbo].[CmnRoleSettings] DROP CONSTRAINT [DF_CmnRoleSettings_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnRoleSettings]'
GO
ALTER TABLE [dbo].[CmnRoleSettings] DROP CONSTRAINT [DF_CmnRoleSettings_Version]
GO
PRINT N'Dropping constraints from [dbo].[CmnRoleSettings]'
GO
ALTER TABLE [dbo].[CmnRoleSettings] DROP CONSTRAINT [DF_CmnRoleSettings_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchColumnsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnSearchColumnsMultiLingual] DROP CONSTRAINT [DF_CmnSearchColumnsMultiLingual_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchControlColumns]'
GO
ALTER TABLE [dbo].[CmnSearchControlColumns] DROP CONSTRAINT [DF_CmnSearchControlColumns_Readonly]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchControlColumns]'
GO
ALTER TABLE [dbo].[CmnSearchControlColumns] DROP CONSTRAINT [DF_CmnSearchControlColumns_IsMandatory]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchControlColumns]'
GO
ALTER TABLE [dbo].[CmnSearchControlColumns] DROP CONSTRAINT [DF_CmnSearchControlColumns_SelectApplicable]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchControlColumns]'
GO
ALTER TABLE [dbo].[CmnSearchControlColumns] DROP CONSTRAINT [DF_CmnSearchControlColumns_IsIdentity]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchControlColumns]'
GO
ALTER TABLE [dbo].[CmnSearchControlColumns] DROP CONSTRAINT [DF_CmnSearchControlColumns_IsDmlControl]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchControlColumns]'
GO
ALTER TABLE [dbo].[CmnSearchControlColumns] DROP CONSTRAINT [DF_CmnSearchControlColumns_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchControlColumns]'
GO
ALTER TABLE [dbo].[CmnSearchControlColumns] DROP CONSTRAINT [DF_CmnSearchControlColumns_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchControlColumns]'
GO
ALTER TABLE [dbo].[CmnSearchControlColumns] DROP CONSTRAINT [DF_CmnSearchControlColumns_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchControlColumns]'
GO
ALTER TABLE [dbo].[CmnSearchControlColumns] DROP CONSTRAINT [DF_CmnSearchControlColumns_FkShowActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchControlColumns]'
GO
ALTER TABLE [dbo].[CmnSearchControlColumns] DROP CONSTRAINT [DF_CmnSearchControlColumns_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchControlColumns]'
GO
ALTER TABLE [dbo].[CmnSearchControlColumns] DROP CONSTRAINT [DF_CmnSearchControlColumns_LoginAttempt]
GO
PRINT N'Dropping constraints from [dbo].[CmnSearchMultiLingual]'
GO
ALTER TABLE [dbo].[CmnSearchMultiLingual] DROP CONSTRAINT [DF_CmnSearchMultiLingual_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnTabsMultiLingual]'
GO
ALTER TABLE [dbo].[CmnTabsMultiLingual] DROP CONSTRAINT [DF_CmnTabsMultiLingual_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserContacts]'
GO
ALTER TABLE [dbo].[CmnUserContacts] DROP CONSTRAINT [DF_CmnUserContacts_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserContacts]'
GO
ALTER TABLE [dbo].[CmnUserContacts] DROP CONSTRAINT [DF_CmnUserContacts_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserContacts]'
GO
ALTER TABLE [dbo].[CmnUserContacts] DROP CONSTRAINT [DF_CmnUserContacts_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserDetails]'
GO
ALTER TABLE [dbo].[CmnUserDetails] DROP CONSTRAINT [DF__CmnUserDe__MenuB__515D5557]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserDetails]'
GO
ALTER TABLE [dbo].[CmnUserDetails] DROP CONSTRAINT [DF__CmnUserDe__NotAc__2079DA72]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserProfile]'
GO
ALTER TABLE [dbo].[CmnUserProfile] DROP CONSTRAINT [DF_CmnUserProfile_ProfileID]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserProfile]'
GO
ALTER TABLE [dbo].[CmnUserProfile] DROP CONSTRAINT [DF_CmnUserProfile_ThemesID]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserProfile]'
GO
ALTER TABLE [dbo].[CmnUserProfile] DROP CONSTRAINT [DF_CmnUserProfile_FontType]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserProfile]'
GO
ALTER TABLE [dbo].[CmnUserProfile] DROP CONSTRAINT [DF_CmnUserProfile_MenuType]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserProfile]'
GO
ALTER TABLE [dbo].[CmnUserProfile] DROP CONSTRAINT [DF__CmnUserPr__MenuB__2486F411]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserProfile]'
GO
ALTER TABLE [dbo].[CmnUserProfile] DROP CONSTRAINT [DF_CmnUserProfile_BarcodePrinterID]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserProfile]'
GO
ALTER TABLE [dbo].[CmnUserProfile] DROP CONSTRAINT [DF_CmnUserProfile_COAPrinterID]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserProfile]'
GO
ALTER TABLE [dbo].[CmnUserProfile] DROP CONSTRAINT [DF_CmnUserProfile_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserProfile]'
GO
ALTER TABLE [dbo].[CmnUserProfile] DROP CONSTRAINT [DF_CmnUserProfile_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserRegistration]'
GO
ALTER TABLE [dbo].[CmnUserRegistration] DROP CONSTRAINT [DF_CmnUserRegistration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserRegistration]'
GO
ALTER TABLE [dbo].[CmnUserRegistration] DROP CONSTRAINT [DF_CmnUserRegistration_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserRegistration]'
GO
ALTER TABLE [dbo].[CmnUserRegistration] DROP CONSTRAINT [DF_CmnUserRegistration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserRegistration]'
GO
ALTER TABLE [dbo].[CmnUserRegistration] DROP CONSTRAINT [DF_CmnUserRegistration_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserRegistration]'
GO
ALTER TABLE [dbo].[CmnUserRegistration] DROP CONSTRAINT [DF_CmnUserRegistration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserRegistration]'
GO
ALTER TABLE [dbo].[CmnUserRegistration] DROP CONSTRAINT [DF_CmnUserRegistration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserRegistration]'
GO
ALTER TABLE [dbo].[CmnUserRegistration] DROP CONSTRAINT [DF_CmnUserRegistration_Version]
GO
PRINT N'Dropping constraints from [dbo].[CmnUserRegistration]'
GO
ALTER TABLE [dbo].[CmnUserRegistration] DROP CONSTRAINT [DF_CmnUserRegistration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[MstClientContacts]'
GO
ALTER TABLE [dbo].[MstClientContacts] DROP CONSTRAINT [DF_MstClientContacts_TitleID]
GO
PRINT N'Dropping constraints from [dbo].[MstClientContacts]'
GO
ALTER TABLE [dbo].[MstClientContacts] DROP CONSTRAINT [DF_MstClientContacts_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstClientContacts]'
GO
ALTER TABLE [dbo].[MstClientContacts] DROP CONSTRAINT [DF_MstClientContacts_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[MstClientContacts]'
GO
ALTER TABLE [dbo].[MstClientContacts] DROP CONSTRAINT [DF_MstClientContacts_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstClientContacts]'
GO
ALTER TABLE [dbo].[MstClientContacts] DROP CONSTRAINT [DF_MstClientContacts_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[MstClientContacts]'
GO
ALTER TABLE [dbo].[MstClientContacts] DROP CONSTRAINT [DF_MstClientContacts_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[MstClientContacts]'
GO
ALTER TABLE [dbo].[MstClientContacts] DROP CONSTRAINT [DF_MstClientContacts_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[MstClientContacts]'
GO
ALTER TABLE [dbo].[MstClientContacts] DROP CONSTRAINT [DF_MstClientContacts_Version]
GO
PRINT N'Dropping constraints from [dbo].[MstClientContacts]'
GO
ALTER TABLE [dbo].[MstClientContacts] DROP CONSTRAINT [DF_MstClientContacts_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[MstClientDetails]'
GO
ALTER TABLE [dbo].[MstClientDetails] DROP CONSTRAINT [DF_MstClientDetails_Blocked]
GO
PRINT N'Dropping constraints from [dbo].[MstClientDetails]'
GO
ALTER TABLE [dbo].[MstClientDetails] DROP CONSTRAINT [DF_MstClientDetails_RefClient]
GO
PRINT N'Dropping constraints from [dbo].[MstClientDetails]'
GO
ALTER TABLE [dbo].[MstClientDetails] DROP CONSTRAINT [DF_MstClientDetails_KeyClient]
GO
PRINT N'Dropping constraints from [dbo].[MstClientDetails]'
GO
ALTER TABLE [dbo].[MstClientDetails] DROP CONSTRAINT [DF_MstClientDetails_ReferenceClient]
GO
PRINT N'Dropping constraints from [dbo].[MstClientDetails]'
GO
ALTER TABLE [dbo].[MstClientDetails] DROP CONSTRAINT [DF_MstClientDetails_CheckSumStatus]
GO
PRINT N'Dropping constraints from [dbo].[MstClientDetails]'
GO
ALTER TABLE [dbo].[MstClientDetails] DROP CONSTRAINT [DF_MstClientDetails_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstClientDetails]'
GO
ALTER TABLE [dbo].[MstClientDetails] DROP CONSTRAINT [DF_MstClientDetails_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstClientDetails]'
GO
ALTER TABLE [dbo].[MstClientDetails] DROP CONSTRAINT [DF_MstClientDetails_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[MstClientDetails]'
GO
ALTER TABLE [dbo].[MstClientDetails] DROP CONSTRAINT [DF_MstClientDetails_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[MstClientDetails]'
GO
ALTER TABLE [dbo].[MstClientDetails] DROP CONSTRAINT [DF_MstClientDetails_Version]
GO
PRINT N'Dropping constraints from [dbo].[MstClientDetails]'
GO
ALTER TABLE [dbo].[MstClientDetails] DROP CONSTRAINT [DF_MstClientDetails_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[MstCompanyDetails]'
GO
ALTER TABLE [dbo].[MstCompanyDetails] DROP CONSTRAINT [DF_MstCompanyDetails_OffsetMinute]
GO
PRINT N'Dropping constraints from [dbo].[MstCompanyDetails]'
GO
ALTER TABLE [dbo].[MstCompanyDetails] DROP CONSTRAINT [DF_MstCompanyDetails_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstCompanyDetails]'
GO
ALTER TABLE [dbo].[MstCompanyDetails] DROP CONSTRAINT [DF_MstCompanyDetails_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstCompanyDetails]'
GO
ALTER TABLE [dbo].[MstCompanyDetails] DROP CONSTRAINT [DF_MstCompanyDetails_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[MstCompanyDetails]'
GO
ALTER TABLE [dbo].[MstCompanyDetails] DROP CONSTRAINT [DF_MstCompanyDetails_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[MstCompanyDetails]'
GO
ALTER TABLE [dbo].[MstCompanyDetails] DROP CONSTRAINT [DF_MstCompanyDetails_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[MstCompanyDetails]'
GO
ALTER TABLE [dbo].[MstCompanyDetails] DROP CONSTRAINT [DF_MstCompanyDetails_Version]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerContacts]'
GO
ALTER TABLE [dbo].[MstManufacturerContacts] DROP CONSTRAINT [DF_MstManufacturerContacts_TitleID]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerContacts]'
GO
ALTER TABLE [dbo].[MstManufacturerContacts] DROP CONSTRAINT [DF_MstManufacturerContacts_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerContacts]'
GO
ALTER TABLE [dbo].[MstManufacturerContacts] DROP CONSTRAINT [DF_MstManufacturerContacts_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerContacts]'
GO
ALTER TABLE [dbo].[MstManufacturerContacts] DROP CONSTRAINT [DF_MstManufacturerContacts_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerContacts]'
GO
ALTER TABLE [dbo].[MstManufacturerContacts] DROP CONSTRAINT [DF_MstManufacturerContacts_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerContacts]'
GO
ALTER TABLE [dbo].[MstManufacturerContacts] DROP CONSTRAINT [DF_MstManufacturerContacts_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerContacts]'
GO
ALTER TABLE [dbo].[MstManufacturerContacts] DROP CONSTRAINT [DF_MstManufacturerContacts_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerContacts]'
GO
ALTER TABLE [dbo].[MstManufacturerContacts] DROP CONSTRAINT [DF_MstManufacturerContacts_Version]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerContacts]'
GO
ALTER TABLE [dbo].[MstManufacturerContacts] DROP CONSTRAINT [DF_MstManufacturerContacts_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerDetails]'
GO
ALTER TABLE [dbo].[MstManufacturerDetails] DROP CONSTRAINT [DF_MstManufacturerDetails_Blocked]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerDetails]'
GO
ALTER TABLE [dbo].[MstManufacturerDetails] DROP CONSTRAINT [DF_MstManufacturerDetails_RefClient]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerDetails]'
GO
ALTER TABLE [dbo].[MstManufacturerDetails] DROP CONSTRAINT [DF_MstManufacturerDetails_KeyClient]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerDetails]'
GO
ALTER TABLE [dbo].[MstManufacturerDetails] DROP CONSTRAINT [DF_MstManufacturerDetails_CheckSumStatus]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerDetails]'
GO
ALTER TABLE [dbo].[MstManufacturerDetails] DROP CONSTRAINT [DF_MstManufacturerDetails_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerDetails]'
GO
ALTER TABLE [dbo].[MstManufacturerDetails] DROP CONSTRAINT [DF_MstManufacturerDetails_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerDetails]'
GO
ALTER TABLE [dbo].[MstManufacturerDetails] DROP CONSTRAINT [DF_MstManufacturerDetails_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerDetails]'
GO
ALTER TABLE [dbo].[MstManufacturerDetails] DROP CONSTRAINT [DF_MstManufacturerDetails_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerDetails]'
GO
ALTER TABLE [dbo].[MstManufacturerDetails] DROP CONSTRAINT [DF_MstManufacturerDetails_Version]
GO
PRINT N'Dropping constraints from [dbo].[MstManufacturerDetails]'
GO
ALTER TABLE [dbo].[MstManufacturerDetails] DROP CONSTRAINT [DF_MstManufacturerDetails_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierContacts]'
GO
ALTER TABLE [dbo].[MstSupplierContacts] DROP CONSTRAINT [DF_MstSupplierContacts_TitleID]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierContacts]'
GO
ALTER TABLE [dbo].[MstSupplierContacts] DROP CONSTRAINT [DF_MstSupplierContacts_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierContacts]'
GO
ALTER TABLE [dbo].[MstSupplierContacts] DROP CONSTRAINT [DF_MstSupplierContacts_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierContacts]'
GO
ALTER TABLE [dbo].[MstSupplierContacts] DROP CONSTRAINT [DF_MstSupplierContacts_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierContacts]'
GO
ALTER TABLE [dbo].[MstSupplierContacts] DROP CONSTRAINT [DF_MstSupplierContactss_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierContacts]'
GO
ALTER TABLE [dbo].[MstSupplierContacts] DROP CONSTRAINT [DF_MstSupplierContacts_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierContacts]'
GO
ALTER TABLE [dbo].[MstSupplierContacts] DROP CONSTRAINT [DF_MstSupplierContacts_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierContacts]'
GO
ALTER TABLE [dbo].[MstSupplierContacts] DROP CONSTRAINT [DF_MstSupplierContacts_Version]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierContacts]'
GO
ALTER TABLE [dbo].[MstSupplierContacts] DROP CONSTRAINT [DF_MstSupplierContacts_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierDetails]'
GO
ALTER TABLE [dbo].[MstSupplierDetails] DROP CONSTRAINT [DF_MstSupplierDetails_Blocked]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierDetails]'
GO
ALTER TABLE [dbo].[MstSupplierDetails] DROP CONSTRAINT [DF_MstSupplierDetails_RefClient]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierDetails]'
GO
ALTER TABLE [dbo].[MstSupplierDetails] DROP CONSTRAINT [DF_MstSupplierDetails_KeyClient]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierDetails]'
GO
ALTER TABLE [dbo].[MstSupplierDetails] DROP CONSTRAINT [DF_MstSupplierDetails_CheckSumStatus]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierDetails]'
GO
ALTER TABLE [dbo].[MstSupplierDetails] DROP CONSTRAINT [DF_MstSupplierDetails_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierDetails]'
GO
ALTER TABLE [dbo].[MstSupplierDetails] DROP CONSTRAINT [DF_MstSupplierDetails_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierDetails]'
GO
ALTER TABLE [dbo].[MstSupplierDetails] DROP CONSTRAINT [DF_MstSupplierDetails_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierDetails]'
GO
ALTER TABLE [dbo].[MstSupplierDetails] DROP CONSTRAINT [DF_MstSupplierDetails_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierDetails]'
GO
ALTER TABLE [dbo].[MstSupplierDetails] DROP CONSTRAINT [DF_MstSupplierDetails_Version]
GO
PRINT N'Dropping constraints from [dbo].[MstSupplierDetails]'
GO
ALTER TABLE [dbo].[MstSupplierDetails] DROP CONSTRAINT [DF_MstSupplierDetails_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[SrvApiTransactionTracking]'
GO
ALTER TABLE [dbo].[SrvApiTransactionTracking] DROP CONSTRAINT [DF_SrvApiTransactionTracking_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[SrvApiTransactionTracking]'
GO
ALTER TABLE [dbo].[SrvApiTransactionTracking] DROP CONSTRAINT [DF__SrvApiTra__Retry__52FC0DF]
GO
PRINT N'Dropping constraints from [dbo].[SrvApiTransactionTracking]'
GO
ALTER TABLE [dbo].[SrvApiTransactionTracking] DROP CONSTRAINT [DF__SrvApiTra__Statu__3A9406EF]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncColumnConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncColumnConfiguration] DROP CONSTRAINT [DF_SrvDataSyncColumnConfiguration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncColumnConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncColumnConfiguration] DROP CONSTRAINT [DF_SrvDataSyncColumnConfiguration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncColumnConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncColumnConfiguration] DROP CONSTRAINT [DF_SrvDataSyncColumnConfiguration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncColumnConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncColumnConfiguration] DROP CONSTRAINT [DF_SrvDataSyncColumnConfiguration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncColumnConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncColumnConfiguration] DROP CONSTRAINT [DF_SrvDataSyncColumnConfiguration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncColumnConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncColumnConfiguration] DROP CONSTRAINT [DF_SrvDataSyncColumnConfiguration_Version]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncConfiguration] DROP CONSTRAINT [DF_SrvDataSyncConfiguration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncConfiguration] DROP CONSTRAINT [DF_SrvDataSyncConfiguration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncConfiguration] DROP CONSTRAINT [DF_SrvDataSyncConfiguration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncConfiguration] DROP CONSTRAINT [DF_SrvDataSyncConfiguration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncConfiguration] DROP CONSTRAINT [DF_SrvDataSyncConfiguration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncConfiguration]'
GO
ALTER TABLE [dbo].[SrvDataSyncConfiguration] DROP CONSTRAINT [DF_SrvDataSyncConfiguration_Version]
GO
PRINT N'Dropping constraints from [dbo].[SrvDataSyncTracking]'
GO
ALTER TABLE [dbo].[SrvDataSyncTracking] DROP CONSTRAINT [DF_SrvDataSyncTracking_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[SrvFileCopierConfiguration]'
GO
ALTER TABLE [dbo].[SrvFileCopierConfiguration] DROP CONSTRAINT [DF__SrvFileCo__NotAc__6DD3006F]
GO
PRINT N'Dropping constraints from [dbo].[SrvFileCopierConfiguration]'
GO
ALTER TABLE [dbo].[SrvFileCopierConfiguration] DROP CONSTRAINT [DF__SrvFileCo__IsDel__6EDB4EFA]
GO
PRINT N'Dropping constraints from [dbo].[SrvFileCopierConfiguration]'
GO
ALTER TABLE [dbo].[SrvFileCopierConfiguration] DROP CONSTRAINT [DF__SrvFileCo__IsCur__4E7DA11]
GO
PRINT N'Dropping constraints from [dbo].[SrvFileCopierConfiguration]'
GO
ALTER TABLE [dbo].[SrvFileCopierConfiguration] DROP CONSTRAINT [DF__SrvFileCo__Versi__758A73E]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportConfiguration]'
GO
ALTER TABLE [dbo].[SrvSsrsReportConfiguration] DROP CONSTRAINT [DF_SrvSsrsReportConfiguration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportConfiguration]'
GO
ALTER TABLE [dbo].[SrvSsrsReportConfiguration] DROP CONSTRAINT [DF_SrvSsrsReportConfiguration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportConfiguration]'
GO
ALTER TABLE [dbo].[SrvSsrsReportConfiguration] DROP CONSTRAINT [DF_SrvSsrsReportConfiguration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportConfiguration]'
GO
ALTER TABLE [dbo].[SrvSsrsReportConfiguration] DROP CONSTRAINT [DF_SrvSsrsReportConfiguration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportConfiguration]'
GO
ALTER TABLE [dbo].[SrvSsrsReportConfiguration] DROP CONSTRAINT [DF_SrvSsrsReportConfiguration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportConfiguration]'
GO
ALTER TABLE [dbo].[SrvSsrsReportConfiguration] DROP CONSTRAINT [DF_SrvSsrsReportConfiguration_Version]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportDataSources]'
GO
ALTER TABLE [dbo].[SrvSsrsReportDataSources] DROP CONSTRAINT [DF_SrvSsrsReportDataSources_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportDataSources]'
GO
ALTER TABLE [dbo].[SrvSsrsReportDataSources] DROP CONSTRAINT [DF_SrvSsrsReportDataSources_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportDataSources]'
GO
ALTER TABLE [dbo].[SrvSsrsReportDataSources] DROP CONSTRAINT [DF_SrvSsrsReportDataSources_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportDataSources]'
GO
ALTER TABLE [dbo].[SrvSsrsReportDataSources] DROP CONSTRAINT [DF_SrvSsrsReportDataSources_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportDataSources]'
GO
ALTER TABLE [dbo].[SrvSsrsReportDataSources] DROP CONSTRAINT [DF_SrvSsrsReportDataSources_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[SrvSsrsReportDataSources]'
GO
ALTER TABLE [dbo].[SrvSsrsReportDataSources] DROP CONSTRAINT [DF_SrvSsrsReportDataSources_Version]
GO
PRINT N'Dropping index [IDX_CmnApplicationErrors] from [dbo].[CmnApplicationErrors]'
GO
DROP INDEX [IDX_CmnApplicationErrors] ON [dbo].[CmnApplicationErrors]
GO
PRINT N'Dropping index [IDX_CmnAuditDataTracking] from [dbo].[CmnAuditDataTracking]'
GO
DROP INDEX [IDX_CmnAuditDataTracking] ON [dbo].[CmnAuditDataTracking]
GO
PRINT N'Dropping index [IDX_CmnAuditTracking] from [dbo].[CmnAuditTracking]'
GO
DROP INDEX [IDX_CmnAuditTracking] ON [dbo].[CmnAuditTracking]
GO
PRINT N'Dropping index [IDX_CmnAuditTracking_Session] from [dbo].[CmnAuditTracking]'
GO
DROP INDEX [IDX_CmnAuditTracking_Session] ON [dbo].[CmnAuditTracking]
GO
PRINT N'Dropping index [IDX_CmnBuildInstallationHistoryDate] from [dbo].[CmnBuildInstallationHistory]'
GO
DROP INDEX [IDX_CmnBuildInstallationHistoryDate] ON [dbo].[CmnBuildInstallationHistory]
GO
PRINT N'Dropping index [IDX_CmnCodeMasterMultiLingual] from [dbo].[CmnCodeMasterMultiLingual]'
GO
DROP INDEX [IDX_CmnCodeMasterMultiLingual] ON [dbo].[CmnCodeMasterMultiLingual]
GO
PRINT N'Dropping index [IDX_CmnColumnsMultiLingual] from [dbo].[CmnColumnsMultiLingual]'
GO
DROP INDEX [IDX_CmnColumnsMultiLingual] ON [dbo].[CmnColumnsMultiLingual]
GO
PRINT N'Dropping index [IDX_CmnControlAutoGenerateConfig] from [dbo].[CmnControlAutoGenerateConfig]'
GO
DROP INDEX [IDX_CmnControlAutoGenerateConfig] ON [dbo].[CmnControlAutoGenerateConfig]
GO
PRINT N'Dropping index [IDX_CmnControlCodeAutoConfig] from [dbo].[CmnControlCodeAutoConfig]'
GO
DROP INDEX [IDX_CmnControlCodeAutoConfig] ON [dbo].[CmnControlCodeAutoConfig]
GO
PRINT N'Dropping index [IDX_CmnControlColumns] from [dbo].[CmnControlColumns]'
GO
DROP INDEX [IDX_CmnControlColumns] ON [dbo].[CmnControlColumns]
GO
PRINT N'Dropping index [IDX_CmnControlsMultiLingual] from [dbo].[CmnControlsMultiLingual]'
GO
DROP INDEX [IDX_CmnControlsMultiLingual] ON [dbo].[CmnControlsMultiLingual]
GO
PRINT N'Dropping index [IDX_CmnDMLParameterMandatory] from [dbo].[CmnDMLParameterProcess]'
GO
DROP INDEX [IDX_CmnDMLParameterMandatory] ON [dbo].[CmnDMLParameterProcess]
GO
PRINT N'Dropping index [IDX_CmnDMLParameterIdentity] from [dbo].[CmnDMLParameterProcess]'
GO
DROP INDEX [IDX_CmnDMLParameterIdentity] ON [dbo].[CmnDMLParameterProcess]
GO
PRINT N'Dropping index [IDX_CmnDMLParameterDmlControl] from [dbo].[CmnDMLParameterProcess]'
GO
DROP INDEX [IDX_CmnDMLParameterDmlControl] ON [dbo].[CmnDMLParameterProcess]
GO
PRINT N'Dropping index [IDX_CmnDMLParameterUniqueGroup] from [dbo].[CmnDMLParameterProcess]'
GO
DROP INDEX [IDX_CmnDMLParameterUniqueGroup] ON [dbo].[CmnDMLParameterProcess]
GO
PRINT N'Dropping index [IDX_CmnDatabaseTableSettings] from [dbo].[CmnDatabaseTableSettings]'
GO
DROP INDEX [IDX_CmnDatabaseTableSettings] ON [dbo].[CmnDatabaseTableSettings]
GO
PRINT N'Dropping index [IDX_CmnFileUpload] from [dbo].[CmnFileUpload]'
GO
DROP INDEX [IDX_CmnFileUpload] ON [dbo].[CmnFileUpload]
GO
PRINT N'Dropping index [idx_CmnFileUploadType] from [dbo].[CmnFileUpload]'
GO
DROP INDEX [idx_CmnFileUploadType] ON [dbo].[CmnFileUpload]
GO
PRINT N'Dropping index [idx_CmnFileUploadIsDeleted] from [dbo].[CmnFileUpload]'
GO
DROP INDEX [idx_CmnFileUploadIsDeleted] ON [dbo].[CmnFileUpload]
GO
PRINT N'Dropping index [FK_CmnFileUploadFormID] from [dbo].[CmnFileUpload]'
GO
DROP INDEX [FK_CmnFileUploadFormID] ON [dbo].[CmnFileUpload]
GO
PRINT N'Dropping index [IDX_CmnFormButtonProperties] from [dbo].[CmnFormButtonProperties]'
GO
DROP INDEX [IDX_CmnFormButtonProperties] ON [dbo].[CmnFormButtonProperties]
GO
PRINT N'Dropping index [IDX_CmnFormControls] from [dbo].[CmnFormControls]'
GO
DROP INDEX [IDX_CmnFormControls] ON [dbo].[CmnFormControls]
GO
PRINT N'Dropping index [IDX_CmnFormMultiLingual] from [dbo].[CmnFormMultiLingual]'
GO
DROP INDEX [IDX_CmnFormMultiLingual] ON [dbo].[CmnFormMultiLingual]
GO
PRINT N'Dropping index [IDX_CmnFormSearchControl] from [dbo].[CmnFormSearchControl]'
GO
DROP INDEX [IDX_CmnFormSearchControl] ON [dbo].[CmnFormSearchControl]
GO
PRINT N'Dropping index [IDX_CmnGUIMultiLingual] from [dbo].[CmnGUIMultiLingual]'
GO
DROP INDEX [IDX_CmnGUIMultiLingual] ON [dbo].[CmnGUIMultiLingual]
GO
PRINT N'Dropping index [IDX_CmnGeneralProperty] from [dbo].[CmnGeneralProperty]'
GO
DROP INDEX [IDX_CmnGeneralProperty] ON [dbo].[CmnGeneralProperty]
GO
PRINT N'Dropping index [IDX_CmnGridColumnsMultiLingual] from [dbo].[CmnGridColumnsMultiLingual]'
GO
DROP INDEX [IDX_CmnGridColumnsMultiLingual] ON [dbo].[CmnGridColumnsMultiLingual]
GO
PRINT N'Dropping index [IDX_CmnGridControlColumns] from [dbo].[CmnGridControlColumns]'
GO
DROP INDEX [IDX_CmnGridControlColumns] ON [dbo].[CmnGridControlColumns]
GO
PRINT N'Dropping index [IDX_CmnGroupBoxes] from [dbo].[CmnGroupBoxes]'
GO
DROP INDEX [IDX_CmnGroupBoxes] ON [dbo].[CmnGroupBoxes]
GO
PRINT N'Dropping index [IDX_CmnGroupMultiLingual] from [dbo].[CmnGroupMultiLingual]'
GO
DROP INDEX [IDX_CmnGroupMultiLingual] ON [dbo].[CmnGroupMultiLingual]
GO
PRINT N'Dropping index [IDX_CmnHelpTemplate] from [dbo].[CmnHelpTemplate]'
GO
DROP INDEX [IDX_CmnHelpTemplate] ON [dbo].[CmnHelpTemplate]
GO
PRINT N'Dropping index [IDX_CmnLoginHistory] from [dbo].[CmnLoginHistory]'
GO
DROP INDEX [IDX_CmnLoginHistory] ON [dbo].[CmnLoginHistory]
GO
PRINT N'Dropping index [IDX_CmnLoginHistoryStatus] from [dbo].[CmnLoginHistory]'
GO
DROP INDEX [IDX_CmnLoginHistoryStatus] ON [dbo].[CmnLoginHistory]
GO
PRINT N'Dropping index [IDX_CmnMessagesMultiLingual] from [dbo].[CmnMessagesMultiLingual]'
GO
DROP INDEX [IDX_CmnMessagesMultiLingual] ON [dbo].[CmnMessagesMultiLingual]
GO
PRINT N'Dropping index [IDX_CmnOTPTracking] from [dbo].[CmnOTPTracking]'
GO
DROP INDEX [IDX_CmnOTPTracking] ON [dbo].[CmnOTPTracking]
GO
PRINT N'Dropping index [IDX_CmnPasswordHistory] from [dbo].[CmnPasswordHistory]'
GO
DROP INDEX [IDX_CmnPasswordHistory] ON [dbo].[CmnPasswordHistory]
GO
PRINT N'Dropping index [IDX_CmnPrefixSuffixMaster] from [dbo].[CmnPrefixSuffixMaster]'
GO
DROP INDEX [IDX_CmnPrefixSuffixMaster] ON [dbo].[CmnPrefixSuffixMaster]
GO
PRINT N'Dropping index [IDX_CmnRBSDataVariablePermission] from [dbo].[CmnRBSDataVariablePermission]'
GO
DROP INDEX [IDX_CmnRBSDataVariablePermission] ON [dbo].[CmnRBSDataVariablePermission]
GO
PRINT N'Dropping index [IDX_CmnRBSGroupsDataVariable] from [dbo].[CmnRBSGroupsDataVariable]'
GO
DROP INDEX [IDX_CmnRBSGroupsDataVariable] ON [dbo].[CmnRBSGroupsDataVariable]
GO
PRINT N'Dropping index [IDX_CmnRBSPermission] from [dbo].[CmnRBSPermission]'
GO
DROP INDEX [IDX_CmnRBSPermission] ON [dbo].[CmnRBSPermission]
GO
PRINT N'Dropping index [IDX_CmnRBSRoleDataVariablePermission] from [dbo].[CmnRBSRoleDataVariablePermission]'
GO
DROP INDEX [IDX_CmnRBSRoleDataVariablePermission] ON [dbo].[CmnRBSRoleDataVariablePermission]
GO
PRINT N'Dropping index [IDX_CmnRememberSearchControl] from [dbo].[CmnRememberSearchControl]'
GO
DROP INDEX [IDX_CmnRememberSearchControl] ON [dbo].[CmnRememberSearchControl]
GO
PRINT N'Dropping index [IDX_CmnRolePermission] from [dbo].[CmnRolePermission]'
GO
DROP INDEX [IDX_CmnRolePermission] ON [dbo].[CmnRolePermission]
GO
PRINT N'Dropping index [IDX_CmnRoleSettings] from [dbo].[CmnRoleSettings]'
GO
DROP INDEX [IDX_CmnRoleSettings] ON [dbo].[CmnRoleSettings]
GO
PRINT N'Dropping index [IDX_CmnSearchColumnsMultiLingual] from [dbo].[CmnSearchColumnsMultiLingual]'
GO
DROP INDEX [IDX_CmnSearchColumnsMultiLingual] ON [dbo].[CmnSearchColumnsMultiLingual]
GO
PRINT N'Dropping index [IDX_CmnSearchControlColumns] from [dbo].[CmnSearchControlColumns]'
GO
DROP INDEX [IDX_CmnSearchControlColumns] ON [dbo].[CmnSearchControlColumns]
GO
PRINT N'Dropping index [IDX_CmnSearchMultiLingual] from [dbo].[CmnSearchMultiLingual]'
GO
DROP INDEX [IDX_CmnSearchMultiLingual] ON [dbo].[CmnSearchMultiLingual]
GO
PRINT N'Dropping index [IDX_CmnSearchParameter] from [dbo].[CmnSearchParameterProcess]'
GO
DROP INDEX [IDX_CmnSearchParameter] ON [dbo].[CmnSearchParameterProcess]
GO
PRINT N'Dropping index [IDX_CmnSearchParameterProcess] from [dbo].[CmnSearchParameterProcess]'
GO
DROP INDEX [IDX_CmnSearchParameterProcess] ON [dbo].[CmnSearchParameterProcess]
GO
PRINT N'Dropping index [IDX_CmnSilentLoginTracking] from [dbo].[CmnSilentLoginTracking]'
GO
DROP INDEX [IDX_CmnSilentLoginTracking] ON [dbo].[CmnSilentLoginTracking]
GO
PRINT N'Dropping index [IDX_CmnTabsMultiLingual] from [dbo].[CmnTabsMultiLingual]'
GO
DROP INDEX [IDX_CmnTabsMultiLingual] ON [dbo].[CmnTabsMultiLingual]
GO
PRINT N'Dropping index [IDX_CmnUserContacts] from [dbo].[CmnUserContacts]'
GO
DROP INDEX [IDX_CmnUserContacts] ON [dbo].[CmnUserContacts]
GO
PRINT N'Dropping index [IDX_CmnUserRegistration] from [dbo].[CmnUserRegistration]'
GO
DROP INDEX [IDX_CmnUserRegistration] ON [dbo].[CmnUserRegistration]
GO
PRINT N'Dropping index [IDX_MstCompanyDetails] from [dbo].[MstCompanyDetails]'
GO
DROP INDEX [IDX_MstCompanyDetails] ON [dbo].[MstCompanyDetails]
GO
PRINT N'Dropping index [IDX_SrvApiTransactionTracking] from [dbo].[SrvApiTransactionTracking]'
GO
DROP INDEX [IDX_SrvApiTransactionTracking] ON [dbo].[SrvApiTransactionTracking]
GO
PRINT N'Dropping index [IDX_SrvDataSyncColumnConfiguration] from [dbo].[SrvDataSyncColumnConfiguration]'
GO
DROP INDEX [IDX_SrvDataSyncColumnConfiguration] ON [dbo].[SrvDataSyncColumnConfiguration]
GO
PRINT N'Dropping index [IDX_SrvDataSyncTracking] from [dbo].[SrvDataSyncTracking]'
GO
DROP INDEX [IDX_SrvDataSyncTracking] ON [dbo].[SrvDataSyncTracking]
GO
PRINT N'Dropping index [IDX_SrvSsrsReportConfiguration] from [dbo].[SrvSsrsReportConfiguration]'
GO
DROP INDEX [IDX_SrvSsrsReportConfiguration] ON [dbo].[SrvSsrsReportConfiguration]
GO
PRINT N'Dropping index [IDX_SrvSsrsReportDataSources] from [dbo].[SrvSsrsReportDataSources]'
GO
DROP INDEX [IDX_SrvSsrsReportDataSources] ON [dbo].[SrvSsrsReportDataSources]
GO
PRINT N'Dropping trigger [dbo].[trgCmnUpdateRolePermission] from [dbo].[CmnUserDetails]'
GO
DROP TRIGGER [dbo].[trgCmnUpdateRolePermission]
GO
PRINT N'Dropping trigger [dbo].[trgCmnUserPermission] from [dbo].[CmnUserDetails]'
GO
DROP TRIGGER [dbo].[trgCmnUserPermission]
GO
PRINT N'Dropping trigger [dbo].[trgMstClientUserUpdate] from [dbo].[MstClientContacts]'
GO
DROP TRIGGER [dbo].[trgMstClientUserUpdate]
GO
PRINT N'Dropping trigger [dbo].[trgDeleteUser] from [dbo].[MstEmployeeDetails]'
GO
DROP TRIGGER [dbo].[trgDeleteUser]
GO
PRINT N'Dropping trigger [dbo].[trgMstEmployeeUserUpdate] from [dbo].[MstEmployeeDetails]'
GO
DROP TRIGGER [dbo].[trgMstEmployeeUserUpdate]
GO
PRINT N'Dropping trigger [dbo].[trgMstManufactureUserUpdate] from [dbo].[MstManufacturerContacts]'
GO
DROP TRIGGER [dbo].[trgMstManufactureUserUpdate]
GO
PRINT N'Dropping trigger [dbo].[trgMstSupplierUserUpdate] from [dbo].[MstSupplierContacts]'
GO
DROP TRIGGER [dbo].[trgMstSupplierUserUpdate]
GO
PRINT N'Dropping [dbo].[spSrvEmailTrackingEntry]'
GO
DROP PROCEDURE [dbo].[spSrvEmailTrackingEntry]
GO
PRINT N'Dropping [dbo].[spGetAddedDeletedIDs]'
GO
DROP PROCEDURE [dbo].[spGetAddedDeletedIDs]
GO
PRINT N'Dropping [dbo].[spCmnRebuildIndex]'
GO
DROP PROCEDURE [dbo].[spCmnRebuildIndex]
GO
PRINT N'Dropping [dbo].[spCmnAfterSaveDMLProcess]'
GO
DROP PROCEDURE [dbo].[spCmnAfterSaveDMLProcess]
GO
PRINT N'Dropping [dbo].[fn_GetRuleValues]'
GO
DROP FUNCTION [dbo].[fn_GetRuleValues]
GO
PRINT N'Dropping [dbo].[fn_GetEncryptData]'
GO
DROP FUNCTION [dbo].[fn_GetEncryptData]
GO
PRINT N'Dropping [dbo].[fn_GetDecryptData]'
GO
DROP FUNCTION [dbo].[fn_GetDecryptData]
GO
PRINT N'Dropping [dbo].[fn_GetCurrencyConversionRate]'
GO
DROP FUNCTION [dbo].[fn_GetCurrencyConversionRate]
GO
PRINT N'Dropping [dbo].[fn_ConvertFloatToString]'
GO
DROP FUNCTION [dbo].[fn_ConvertFloatToString]
GO
PRINT N'Dropping [dbo].[viewUserStatusHistory]'
GO
DROP VIEW [dbo].[viewUserStatusHistory]
GO
PRINT N'Dropping [dbo].[viewUserStatus]'
GO
DROP VIEW [dbo].[viewUserStatus]
GO
PRINT N'Dropping [dbo].[viewCodeMasterTypes]'
GO
DROP VIEW [dbo].[viewCodeMasterTypes]
GO
PRINT N'Dropping [dbo].[viewCmnRBSFormList]'
GO
DROP VIEW [dbo].[viewCmnRBSFormList]
GO
PRINT N'Dropping [dbo].[viewCmnFormDetails]'
GO
DROP VIEW [dbo].[viewCmnFormDetails]
GO
PRINT N'Dropping [dbo].[viewCmnFormCodeMasters]'
GO
DROP VIEW [dbo].[viewCmnFormCodeMasters]
GO
PRINT N'Dropping [dbo].[viewCmnCodeMasterNextID]'
GO
DROP VIEW [dbo].[viewCmnCodeMasterNextID]
GO
PRINT N'Dropping [dbo].[viewCmnCodeMaster]'
GO
DROP VIEW [dbo].[viewCmnCodeMaster]
GO
PRINT N'Dropping [dbo].[viewCmnAuditDataTracking]'
GO
DROP VIEW [dbo].[viewCmnAuditDataTracking]
GO
PRINT N'Dropping [dbo].[viewCmnAuditDataList]'
GO
DROP VIEW [dbo].[viewCmnAuditDataList]
GO
PRINT N'Dropping [dbo].[viewCmnApplicationMessages]'
GO
DROP VIEW [dbo].[viewCmnApplicationMessages]
GO
PRINT N'Dropping [dbo].[viewAdmUserReactive]'
GO
DROP VIEW [dbo].[viewAdmUserReactive]
GO
PRINT N'Dropping [dbo].[spSrvUpdateDataSyncStatus]'
GO
DROP PROCEDURE [dbo].[spSrvUpdateDataSyncStatus]
GO
PRINT N'Dropping [dbo].[spSrvUpdateApiStatus]'
GO
DROP PROCEDURE [dbo].[spSrvUpdateApiStatus]
GO
PRINT N'Dropping [dbo].[spSrvGetSsrsReportConfig]'
GO
DROP PROCEDURE [dbo].[spSrvGetSsrsReportConfig]
GO
PRINT N'Dropping [dbo].[spSrvGetPendingApis]'
GO
DROP PROCEDURE [dbo].[spSrvGetPendingApis]
GO
PRINT N'Dropping [dbo].[spSrvGetDownOrViewReport]'
GO
DROP PROCEDURE [dbo].[spSrvGetDownOrViewReport]
GO
PRINT N'Dropping [dbo].[spSrvGetDataSyncList]'
GO
DROP PROCEDURE [dbo].[spSrvGetDataSyncList]
GO
PRINT N'Dropping [dbo].[spSrvGetDataSyncConfiguration]'
GO
DROP PROCEDURE [dbo].[spSrvGetDataSyncConfiguration]
GO
PRINT N'Dropping [dbo].[spSrvFileCopierConfiguration]'
GO
DROP PROCEDURE [dbo].[spSrvFileCopierConfiguration]
GO
PRINT N'Dropping [dbo].[spSrvFileCopierConfigRemote]'
GO
DROP PROCEDURE [dbo].[spSrvFileCopierConfigRemote]
GO
PRINT N'Dropping [dbo].[spSrvCustomReportTracking]'
GO
DROP PROCEDURE [dbo].[spSrvCustomReportTracking]
GO
PRINT N'Dropping [dbo].[SrvCustomReportTracking]'
GO
DROP TABLE [dbo].[SrvCustomReportTracking]
GO
PRINT N'Dropping [dbo].[spSrvCusRepAttachmentEntry]'
GO
DROP PROCEDURE [dbo].[spSrvCusRepAttachmentEntry]
GO
PRINT N'Dropping [dbo].[spMstCompanyUserCreation]'
GO
DROP PROCEDURE [dbo].[spMstCompanyUserCreation]
GO
PRINT N'Dropping [dbo].[spUpdateUserSessionTime]'
GO
DROP PROCEDURE [dbo].[spUpdateUserSessionTime]
GO
PRINT N'Dropping [dbo].[spCmnValidationCheck]'
GO
DROP PROCEDURE [dbo].[spCmnValidationCheck]
GO
PRINT N'Dropping [dbo].[CmnDatabaseTableSettings]'
GO
DROP TABLE [dbo].[CmnDatabaseTableSettings]
GO
PRINT N'Dropping [dbo].[CmnSequenceFeeder]'
GO
DROP TABLE [dbo].[CmnSequenceFeeder]
GO
PRINT N'Dropping [dbo].[spCmnValidateUserAccess]'
GO
DROP PROCEDURE [dbo].[spCmnValidateUserAccess]
GO
PRINT N'Dropping [dbo].[spCmnUserSettings]'
GO
DROP PROCEDURE [dbo].[spCmnUserSettings]
GO
PRINT N'Dropping [dbo].[spCmnUserPermissionLoad]'
GO
DROP PROCEDURE [dbo].[spCmnUserPermissionLoad]
GO
PRINT N'Dropping [dbo].[spCmnUpdateUserPermission]'
GO
DROP PROCEDURE [dbo].[spCmnUpdateUserPermission]
GO
PRINT N'Dropping [dbo].[spCmnUpdateRolePermission]'
GO
DROP PROCEDURE [dbo].[spCmnUpdateRolePermission]
GO
PRINT N'Dropping [dbo].[spCmnUpdateMasterData]'
GO
DROP PROCEDURE [dbo].[spCmnUpdateMasterData]
GO
PRINT N'Dropping [dbo].[spCmnUpdateAuditDataProcess]'
GO
DROP PROCEDURE [dbo].[spCmnUpdateAuditDataProcess]
GO
PRINT N'Dropping [dbo].[spCmnSubTreeGridFill]'
GO
DROP PROCEDURE [dbo].[spCmnSubTreeGridFill]
GO
PRINT N'Dropping [dbo].[spCmnSSOLoginRequest]'
GO
DROP PROCEDURE [dbo].[spCmnSSOLoginRequest]
GO
PRINT N'Dropping [dbo].[spCmnSetSilentLoginStatus]'
GO
DROP PROCEDURE [dbo].[spCmnSetSilentLoginStatus]
GO
PRINT N'Dropping [dbo].[spCmnSessionTimeout]'
GO
DROP PROCEDURE [dbo].[spCmnSessionTimeout]
GO
PRINT N'Dropping [dbo].[spCmnSearchParameterProcess]'
GO
DROP PROCEDURE [dbo].[spCmnSearchParameterProcess]
GO
PRINT N'Dropping [dbo].[spCmnSearchOnChangeControls]'
GO
DROP PROCEDURE [dbo].[spCmnSearchOnChangeControls]
GO
PRINT N'Dropping [dbo].[spCmnSearchControls]'
GO
DROP PROCEDURE [dbo].[spCmnSearchControls]
GO
PRINT N'Dropping [dbo].[spCmnSubTreeFillControl]'
GO
DROP PROCEDURE [dbo].[spCmnSubTreeFillControl]
GO
PRINT N'Dropping [dbo].[spCmnSaveRoleSettings]'
GO
DROP PROCEDURE [dbo].[spCmnSaveRoleSettings]
GO
PRINT N'Dropping [dbo].[spCmnSaveRbsGroups]'
GO
DROP PROCEDURE [dbo].[spCmnSaveRbsGroups]
GO
PRINT N'Dropping [dbo].[spCmnSaveAttendanceMasterData]'
GO
DROP PROCEDURE [dbo].[spCmnSaveAttendanceMasterData]
GO
PRINT N'Dropping [dbo].[spCmnSaveAttendanceData]'
GO
DROP PROCEDURE [dbo].[spCmnSaveAttendanceData]
GO
PRINT N'Dropping [dbo].[spCmnRBSDataVariableUpdate]'
GO
DROP PROCEDURE [dbo].[spCmnRBSDataVariableUpdate]
GO
PRINT N'Dropping [dbo].[spCmnRBSDataVariableDataSources]'
GO
DROP PROCEDURE [dbo].[spCmnRBSDataVariableDataSources]
GO
PRINT N'Dropping [dbo].[spCmnPrepareFormQueryForAll]'
GO
DROP PROCEDURE [dbo].[spCmnPrepareFormQueryForAll]
GO
PRINT N'Dropping [dbo].[spCmnPrepareFormQuery]'
GO
DROP PROCEDURE [dbo].[spCmnPrepareFormQuery]
GO
PRINT N'Dropping [dbo].[spCmnMasterDataTypeValues]'
GO
DROP PROCEDURE [dbo].[spCmnMasterDataTypeValues]
GO
PRINT N'Dropping [dbo].[spCmnMasterDataTypes]'
GO
DROP PROCEDURE [dbo].[spCmnMasterDataTypes]
GO
PRINT N'Dropping [dbo].[spCmnLogout]'
GO
DROP PROCEDURE [dbo].[spCmnLogout]
GO
PRINT N'Dropping [dbo].[spCmnLoginRequest]'
GO
DROP PROCEDURE [dbo].[spCmnLoginRequest]
GO
PRINT N'Dropping [dbo].[spCmnListGridControls]'
GO
DROP PROCEDURE [dbo].[spCmnListGridControls]
GO
PRINT N'Dropping [dbo].[spCmnIsValidSilentLogin]'
GO
DROP PROCEDURE [dbo].[spCmnIsValidSilentLogin]
GO
PRINT N'Dropping [dbo].[spCmnHeartBeat]'
GO
DROP PROCEDURE [dbo].[spCmnHeartBeat]
GO
PRINT N'Dropping [dbo].[spCmnGridValues]'
GO
DROP PROCEDURE [dbo].[spCmnGridValues]
GO
PRINT N'Dropping [dbo].[spCmnGridPopupValues]'
GO
DROP PROCEDURE [dbo].[spCmnGridPopupValues]
GO
PRINT N'Dropping [dbo].[spCmnGridOnchangeControls]'
GO
DROP PROCEDURE [dbo].[spCmnGridOnchangeControls]
GO
PRINT N'Dropping [dbo].[spCmnGridFillControl]'
GO
DROP PROCEDURE [dbo].[spCmnGridFillControl]
GO
PRINT N'Dropping [dbo].[CmnFormQuery]'
GO
DROP TABLE [dbo].[CmnFormQuery]
GO
PRINT N'Dropping [dbo].[spCmnGridDML]'
GO
DROP PROCEDURE [dbo].[spCmnGridDML]
GO
PRINT N'Dropping [dbo].[spCmnGridControls]'
GO
DROP PROCEDURE [dbo].[spCmnGridControls]
GO
PRINT N'Dropping [dbo].[spCmnGetUserTable]'
GO
DROP PROCEDURE [dbo].[spCmnGetUserTable]
GO
PRINT N'Dropping [dbo].[spCmnGetUserMenuDetails]'
GO
DROP PROCEDURE [dbo].[spCmnGetUserMenuDetails]
GO
PRINT N'Dropping [dbo].[spCmnGetUserAuthentication]'
GO
DROP PROCEDURE [dbo].[spCmnGetUserAuthentication]
GO
PRINT N'Dropping [dbo].[spCmnGetStoredProcedureByAction]'
GO
DROP PROCEDURE [dbo].[spCmnGetStoredProcedureByAction]
GO
PRINT N'Dropping [dbo].[spCmnGetSilentLoginToken]'
GO
DROP PROCEDURE [dbo].[spCmnGetSilentLoginToken]
GO
PRINT N'Dropping [dbo].[spCmnGetRoleSettings]'
GO
DROP PROCEDURE [dbo].[spCmnGetRoleSettings]
GO
PRINT N'Dropping [dbo].[spCmnGetRolePermission]'
GO
DROP PROCEDURE [dbo].[spCmnGetRolePermission]
GO
PRINT N'Dropping [dbo].[spCmnGetRoleMenuDetails]'
GO
DROP PROCEDURE [dbo].[spCmnGetRoleMenuDetails]
GO
PRINT N'Dropping [dbo].[spCmnGetRole]'
GO
DROP PROCEDURE [dbo].[spCmnGetRole]
GO
PRINT N'Dropping [dbo].[spCmnGetRBSModuleDetails]'
GO
DROP PROCEDURE [dbo].[spCmnGetRBSModuleDetails]
GO
PRINT N'Dropping [dbo].[spCmnGetRbsGroups]'
GO
DROP PROCEDURE [dbo].[spCmnGetRbsGroups]
GO
PRINT N'Dropping [dbo].[spCmnGetModuleDetails]'
GO
DROP PROCEDURE [dbo].[spCmnGetModuleDetails]
GO
PRINT N'Dropping [dbo].[spCmnGetMenuDetails]'
GO
DROP PROCEDURE [dbo].[spCmnGetMenuDetails]
GO
PRINT N'Dropping [dbo].[spCmnGetMasterDataButtons]'
GO
DROP PROCEDURE [dbo].[spCmnGetMasterDataButtons]
GO
PRINT N'Dropping [dbo].[spCmnGetLanguages]'
GO
DROP PROCEDURE [dbo].[spCmnGetLanguages]
GO
PRINT N'Dropping [dbo].[spCmnGetKFDetails]'
GO
DROP PROCEDURE [dbo].[spCmnGetKFDetails]
GO
PRINT N'Dropping [dbo].[spCmnGetGuiData]'
GO
DROP PROCEDURE [dbo].[spCmnGetGuiData]
GO
PRINT N'Dropping [dbo].[spCmnGetFormPermission]'
GO
DROP PROCEDURE [dbo].[spCmnGetFormPermission]
GO
PRINT N'Dropping [dbo].[spCmnGetFormNavigateDetails]'
GO
DROP PROCEDURE [dbo].[spCmnGetFormNavigateDetails]
GO
PRINT N'Dropping [dbo].[spCmnGetFormDetails]'
GO
DROP PROCEDURE [dbo].[spCmnGetFormDetails]
GO
PRINT N'Dropping [dbo].[spCmnGetFormButtons]'
GO
DROP PROCEDURE [dbo].[spCmnGetFormButtons]
GO
PRINT N'Dropping [dbo].[spCmnGetDataSources]'
GO
DROP PROCEDURE [dbo].[spCmnGetDataSources]
GO
PRINT N'Dropping [dbo].[spCmnGetControlProperties]'
GO
DROP PROCEDURE [dbo].[spCmnGetControlProperties]
GO
PRINT N'Dropping [dbo].[spCmnGetConfiguredForms]'
GO
DROP PROCEDURE [dbo].[spCmnGetConfiguredForms]
GO
PRINT N'Dropping [dbo].[spCmnGetAuditDataByWorkflow]'
GO
DROP PROCEDURE [dbo].[spCmnGetAuditDataByWorkflow]
GO
PRINT N'Dropping [dbo].[spCmnGetAuditColumnsByWorkflow]'
GO
DROP PROCEDURE [dbo].[spCmnGetAuditColumnsByWorkflow]
GO
PRINT N'Dropping [dbo].[spCmnGetAttendanceMasterData]'
GO
DROP PROCEDURE [dbo].[spCmnGetAttendanceMasterData]
GO
PRINT N'Dropping [dbo].[spCmnGetApplicationSettings]'
GO
DROP PROCEDURE [dbo].[spCmnGetApplicationSettings]
GO
PRINT N'Dropping [dbo].[CmnBuildInstallationHistory]'
GO
DROP TABLE [dbo].[CmnBuildInstallationHistory]
GO
PRINT N'Dropping [dbo].[spCmnGenerateOTP]'
GO
DROP PROCEDURE [dbo].[spCmnGenerateOTP]
GO
PRINT N'Dropping [dbo].[CmnOTPTracking]'
GO
DROP TABLE [dbo].[CmnOTPTracking]
GO
PRINT N'Dropping [dbo].[spCmnForgotPassword]'
GO
DROP PROCEDURE [dbo].[spCmnForgotPassword]
GO
PRINT N'Dropping [dbo].[spCmnFillMasterDataControls]'
GO
DROP PROCEDURE [dbo].[spCmnFillMasterDataControls]
GO
PRINT N'Dropping [dbo].[spCmnFillControl]'
GO
DROP PROCEDURE [dbo].[spCmnFillControl]
GO
PRINT N'Dropping [dbo].[spCmnFileDownload]'
GO
DROP PROCEDURE [dbo].[spCmnFileDownload]
GO
PRINT N'Dropping [dbo].[spCmnDMLOnChangeControls]'
GO
DROP PROCEDURE [dbo].[spCmnDMLOnChangeControls]
GO
PRINT N'Dropping [dbo].[spCmnGetFormTableRBSCondition]'
GO
DROP PROCEDURE [dbo].[spCmnGetFormTableRBSCondition]
GO
PRINT N'Dropping [dbo].[spCmnGetFormRBSData]'
GO
DROP PROCEDURE [dbo].[spCmnGetFormRBSData]
GO
PRINT N'Dropping [dbo].[spCmnDeleteMasterData]'
GO
DROP PROCEDURE [dbo].[spCmnDeleteMasterData]
GO
PRINT N'Dropping [dbo].[spCmnCreateSilentLogin]'
GO
DROP PROCEDURE [dbo].[spCmnCreateSilentLogin]
GO
PRINT N'Dropping [dbo].[CmnSilentLoginTracking]'
GO
DROP TABLE [dbo].[CmnSilentLoginTracking]
GO
PRINT N'Dropping [dbo].[spCmnControlsDML]'
GO
DROP PROCEDURE [dbo].[spCmnControlsDML]
GO
PRINT N'Dropping [dbo].[fn_DataSplit]'
GO
DROP FUNCTION [dbo].[fn_DataSplit]
GO
PRINT N'Dropping [dbo].[spCmnFileUpload]'
GO
DROP PROCEDURE [dbo].[spCmnFileUpload]
GO
PRINT N'Dropping [dbo].[spCmnDMLParameterProcess]'
GO
DROP PROCEDURE [dbo].[spCmnDMLParameterProcess]
GO
PRINT N'Dropping [dbo].[spCmnHandleException]'
GO
DROP PROCEDURE [dbo].[spCmnHandleException]
GO
PRINT N'Dropping [dbo].[fn_IsDebugMode]'
GO
DROP FUNCTION [dbo].[fn_IsDebugMode]
GO
PRINT N'Dropping [dbo].[spCmnCodeMasterInsertImport]'
GO
DROP PROCEDURE [dbo].[spCmnCodeMasterInsertImport]
GO
PRINT N'Dropping [dbo].[spCmnClearFormConfiguration]'
GO
DROP PROCEDURE [dbo].[spCmnClearFormConfiguration]
GO
PRINT N'Dropping [dbo].[spCmnChkUserAuditValidate]'
GO
DROP PROCEDURE [dbo].[spCmnChkUserAuditValidate]
GO
PRINT N'Dropping [dbo].[spCmnChartFill]'
GO
DROP PROCEDURE [dbo].[spCmnChartFill]
GO
PRINT N'Dropping [dbo].[spCmnChangePassword]'
GO
DROP PROCEDURE [dbo].[spCmnChangePassword]
GO
PRINT N'Dropping [dbo].[spCmnChangeOrderBy]'
GO
DROP PROCEDURE [dbo].[spCmnChangeOrderBy]
GO
PRINT N'Dropping [dbo].[CmnSearchParameterProcess]'
GO
DROP TABLE [dbo].[CmnSearchParameterProcess]
GO
PRINT N'Dropping [dbo].[spCmnAutoGenerateColumnUpdate]'
GO
DROP PROCEDURE [dbo].[spCmnAutoGenerateColumnUpdate]
GO
PRINT N'Dropping [dbo].[spCmnGeneratePrefixSuffix]'
GO
DROP PROCEDURE [dbo].[spCmnGeneratePrefixSuffix]
GO
PRINT N'Dropping [dbo].[spCmnAuditTrackingEntry]'
GO
DROP PROCEDURE [dbo].[spCmnAuditTrackingEntry]
GO
PRINT N'Dropping [dbo].[fn_GetDataCount]'
GO
DROP FUNCTION [dbo].[fn_GetDataCount]
GO
PRINT N'Dropping [dbo].[spCmnApplyToOtherRoles]'
GO
DROP PROCEDURE [dbo].[spCmnApplyToOtherRoles]
GO
PRINT N'Dropping [dbo].[spCmnApplicationErrorDML]'
GO
DROP PROCEDURE [dbo].[spCmnApplicationErrorDML]
GO
PRINT N'Dropping [dbo].[spCmnAddMasterDataType]'
GO
DROP PROCEDURE [dbo].[spCmnAddMasterDataType]
GO
PRINT N'Dropping [dbo].[spCmnAddMasterData]'
GO
DROP PROCEDURE [dbo].[spCmnAddMasterData]
GO
PRINT N'Dropping [dbo].[spCmnStaticAuditTracking]'
GO
DROP PROCEDURE [dbo].[spCmnStaticAuditTracking]
GO
PRINT N'Dropping [dbo].[spEmailAdmSummaryAppErrors]'
GO
DROP PROCEDURE [dbo].[spEmailAdmSummaryAppErrors]
GO
PRINT N'Dropping [dbo].[spEmailAdmReportAppErrors]'
GO
DROP PROCEDURE [dbo].[spEmailAdmReportAppErrors]
GO
PRINT N'Dropping [dbo].[viewCmnAppFormErrors]'
GO
DROP VIEW [dbo].[viewCmnAppFormErrors]
GO
PRINT N'Dropping [dbo].[CmnApplicationErrors]'
GO
DROP TABLE [dbo].[CmnApplicationErrors]
GO
PRINT N'Dropping [dbo].[CmnFormErrors]'
GO
DROP TABLE [dbo].[CmnFormErrors]
GO
PRINT N'Dropping [dbo].[spAdmUserLogout]'
GO
DROP PROCEDURE [dbo].[spAdmUserLogout]
GO
PRINT N'Dropping [dbo].[spAdmUnlockUser]'
GO
DROP PROCEDURE [dbo].[spAdmUnlockUser]
GO
PRINT N'Dropping [dbo].[spAdmResetPassword]'
GO
DROP PROCEDURE [dbo].[spAdmResetPassword]
GO
PRINT N'Dropping [dbo].[spAdmOnlineUserCreation]'
GO
DROP PROCEDURE [dbo].[spAdmOnlineUserCreation]
GO
PRINT N'Dropping [dbo].[spAdmnRBSGroupPostSave]'
GO
DROP PROCEDURE [dbo].[spAdmnRBSGroupPostSave]
GO
PRINT N'Dropping [dbo].[spAdmLockUser]'
GO
DROP PROCEDURE [dbo].[spAdmLockUser]
GO
PRINT N'Dropping [dbo].[spAdmGetUserDetails]'
GO
DROP PROCEDURE [dbo].[spAdmGetUserDetails]
GO
PRINT N'Dropping [dbo].[fn_GetExpUnitConversionRate]'
GO
DROP FUNCTION [dbo].[fn_GetExpUnitConversionRate]
GO
PRINT N'Dropping [dbo].[fn_GetUnitConversionRate]'
GO
DROP FUNCTION [dbo].[fn_GetUnitConversionRate]
GO
PRINT N'Dropping [dbo].[CmnSuperscriptMapping]'
GO
DROP TABLE [dbo].[CmnSuperscriptMapping]
GO
PRINT N'Dropping [dbo].[fn_GetTableCompanyRBSCondition]'
GO
DROP FUNCTION [dbo].[fn_GetTableCompanyRBSCondition]
GO
PRINT N'Dropping [dbo].[fn_GetTableBranchRBSCondition]'
GO
DROP FUNCTION [dbo].[fn_GetTableBranchRBSCondition]
GO
PRINT N'Dropping [dbo].[fn_GetFinancialYearDetails]'
GO
DROP FUNCTION [dbo].[fn_GetFinancialYearDetails]
GO
PRINT N'Dropping [dbo].[fn_ConstractDependentConditions]'
GO
DROP FUNCTION [dbo].[fn_ConstractDependentConditions]
GO
PRINT N'Dropping [dbo].[fn_RevolSpliter]'
GO
DROP FUNCTION [dbo].[fn_RevolSpliter]
GO
PRINT N'Dropping [dbo].[fn_SplitString]'
GO
DROP FUNCTION [dbo].[fn_SplitString]
GO
PRINT N'Dropping [dbo].[CmnRememberSearchControl]'
GO
DROP TABLE [dbo].[CmnRememberSearchControl]
GO
PRINT N'Dropping [dbo].[spCmnUserDeleteNotActive]'
GO
DROP PROCEDURE [dbo].[spCmnUserDeleteNotActive]
GO
PRINT N'Dropping [dbo].[spCmnRBSDataVarGroupUpdate]'
GO
DROP PROCEDURE [dbo].[spCmnRBSDataVarGroupUpdate]
GO
PRINT N'Dropping [dbo].[CmnLoginHistory]'
GO
DROP TABLE [dbo].[CmnLoginHistory]
GO
PRINT N'Dropping [dbo].[SrvSsrsReportDataSources]'
GO
DROP TABLE [dbo].[SrvSsrsReportDataSources]
GO
PRINT N'Dropping [dbo].[SrvDataSyncTracking]'
GO
DROP TABLE [dbo].[SrvDataSyncTracking]
GO
PRINT N'Dropping [dbo].[SrvDataSyncColumnConfiguration]'
GO
DROP TABLE [dbo].[SrvDataSyncColumnConfiguration]
GO
PRINT N'Dropping [dbo].[SrvSsrsReportConfiguration]'
GO
DROP TABLE [dbo].[SrvSsrsReportConfiguration]
GO
PRINT N'Dropping [dbo].[SrvFileCopierConfiguration]'
GO
DROP TABLE [dbo].[SrvFileCopierConfiguration]
GO
PRINT N'Dropping [dbo].[SrvDataSyncConfiguration]'
GO
DROP TABLE [dbo].[SrvDataSyncConfiguration]
GO
PRINT N'Dropping [dbo].[SrvApiTransactionTracking]'
GO
DROP TABLE [dbo].[SrvApiTransactionTracking]
GO
PRINT N'Dropping [dbo].[MstSupplierContacts]'
GO
DROP TABLE [dbo].[MstSupplierContacts]
GO
PRINT N'Dropping [dbo].[MstManufacturerContacts]'
GO
DROP TABLE [dbo].[MstManufacturerContacts]
GO
PRINT N'Dropping [dbo].[MstClientContacts]'
GO
DROP TABLE [dbo].[MstClientContacts]
GO
PRINT N'Dropping [dbo].[MstSupplierDetails]'
GO
DROP TABLE [dbo].[MstSupplierDetails]
GO
PRINT N'Dropping [dbo].[MstManufacturerDetails]'
GO
DROP TABLE [dbo].[MstManufacturerDetails]
GO
PRINT N'Dropping [dbo].[MstCompanyDetails]'
GO
DROP TABLE [dbo].[MstCompanyDetails]
GO
PRINT N'Dropping [dbo].[MstClientDetails]'
GO
DROP TABLE [dbo].[MstClientDetails]
GO
PRINT N'Dropping [dbo].[CmnSearchColumnsMultiLingual]'
GO
DROP TABLE [dbo].[CmnSearchColumnsMultiLingual]
GO
PRINT N'Dropping [dbo].[CmnGridColumnsMultiLingual]'
GO
DROP TABLE [dbo].[CmnGridColumnsMultiLingual]
GO
PRINT N'Dropping [dbo].[CmnControlCodeAutoConfig]'
GO
DROP TABLE [dbo].[CmnControlCodeAutoConfig]
GO
PRINT N'Dropping [dbo].[CmnSearchMultiLingual]'
GO
DROP TABLE [dbo].[CmnSearchMultiLingual]
GO
PRINT N'Dropping [dbo].[CmnSearchControlColumns]'
GO
DROP TABLE [dbo].[CmnSearchControlColumns]
GO
PRINT N'Dropping [dbo].[CmnGridControlColumns]'
GO
DROP TABLE [dbo].[CmnGridControlColumns]
GO
PRINT N'Dropping [dbo].[CmnGeneralProperty]'
GO
DROP TABLE [dbo].[CmnGeneralProperty]
GO
PRINT N'Dropping [dbo].[CmnControlAutoGenerateConfig]'
GO
DROP TABLE [dbo].[CmnControlAutoGenerateConfig]
GO
PRINT N'Dropping [dbo].[CmnColumnsMultiLingual]'
GO
DROP TABLE [dbo].[CmnColumnsMultiLingual]
GO
PRINT N'Dropping [dbo].[CmnColumnProperty]'
GO
DROP TABLE [dbo].[CmnColumnProperty]
GO
PRINT N'Dropping [dbo].[CmnAuditDataTracking]'
GO
DROP TABLE [dbo].[CmnAuditDataTracking]
GO
PRINT N'Dropping [dbo].[CmnFormSearchControl]'
GO
DROP TABLE [dbo].[CmnFormSearchControl]
GO
PRINT N'Dropping [dbo].[CmnControlsMultiLingual]'
GO
DROP TABLE [dbo].[CmnControlsMultiLingual]
GO
PRINT N'Dropping [dbo].[CmnControlProperty]'
GO
DROP TABLE [dbo].[CmnControlProperty]
GO
PRINT N'Dropping [dbo].[CmnControlColumns]'
GO
DROP TABLE [dbo].[CmnControlColumns]
GO
PRINT N'Dropping [dbo].[CmnAuditTracking]'
GO
DROP TABLE [dbo].[CmnAuditTracking]
GO
PRINT N'Dropping [dbo].[CmnGroupMultiLingual]'
GO
DROP TABLE [dbo].[CmnGroupMultiLingual]
GO
PRINT N'Dropping [dbo].[CmnFormControls]'
GO
DROP TABLE [dbo].[CmnFormControls]
GO
PRINT N'Dropping [dbo].[CmnTabsMultiLingual]'
GO
DROP TABLE [dbo].[CmnTabsMultiLingual]
GO
PRINT N'Dropping [dbo].[CmnGroupBoxes]'
GO
DROP TABLE [dbo].[CmnGroupBoxes]
GO
PRINT N'Dropping [dbo].[CmnUserRegistration]'
GO
DROP TABLE [dbo].[CmnUserRegistration]
GO
PRINT N'Dropping [dbo].[CmnUserProfile]'
GO
DROP TABLE [dbo].[CmnUserProfile]
GO
PRINT N'Dropping [dbo].[CmnRoleSettings]'
GO
DROP TABLE [dbo].[CmnRoleSettings]
GO
PRINT N'Dropping [dbo].[CmnRolePermission]'
GO
DROP TABLE [dbo].[CmnRolePermission]
GO
PRINT N'Dropping [dbo].[CmnRBSRoleDataVariablePermission]'
GO
DROP TABLE [dbo].[CmnRBSRoleDataVariablePermission]
GO
PRINT N'Dropping [dbo].[CmnRBSPermission]'
GO
DROP TABLE [dbo].[CmnRBSPermission]
GO
PRINT N'Dropping [dbo].[CmnRBSDataVariablePermission]'
GO
DROP TABLE [dbo].[CmnRBSDataVariablePermission]
GO
PRINT N'Dropping [dbo].[CmnMessagesMultiLingual]'
GO
DROP TABLE [dbo].[CmnMessagesMultiLingual]
GO
PRINT N'Dropping [dbo].[CmnHelpTemplate]'
GO
DROP TABLE [dbo].[CmnHelpTemplate]
GO
PRINT N'Dropping [dbo].[CmnGUIMultiLingual]'
GO
DROP TABLE [dbo].[CmnGUIMultiLingual]
GO
PRINT N'Dropping [dbo].[CmnFormMultiLingual]'
GO
DROP TABLE [dbo].[CmnFormMultiLingual]
GO
PRINT N'Dropping [dbo].[CmnFormButtonProperties]'
GO
DROP TABLE [dbo].[CmnFormButtonProperties]
GO
PRINT N'Dropping [dbo].[CmnFileUpload]'
GO
DROP TABLE [dbo].[CmnFileUpload]
GO
PRINT N'Dropping [dbo].[CmnCodeMasterMultiLingual]'
GO
DROP TABLE [dbo].[CmnCodeMasterMultiLingual]
GO
PRINT N'Dropping [dbo].[CmnUserContacts]'
GO
DROP TABLE [dbo].[CmnUserContacts]
GO
PRINT N'Dropping [dbo].[CmnRBSGroupsDataVariable]'
GO
DROP TABLE [dbo].[CmnRBSGroupsDataVariable]
GO
PRINT N'Dropping [dbo].[CmnRbsGroups]'
GO
DROP TABLE [dbo].[CmnRbsGroups]
GO
PRINT N'Dropping [dbo].[CmnRbsGroupForms]'
GO
DROP TABLE [dbo].[CmnRbsGroupForms]
GO
PRINT N'Dropping [dbo].[CmnPrefixSuffixMaster]'
GO
DROP TABLE [dbo].[CmnPrefixSuffixMaster]
GO
PRINT N'Dropping [dbo].[CmnPasswordPolicy]'
GO
DROP TABLE [dbo].[CmnPasswordPolicy]
GO
PRINT N'Dropping [dbo].[CmnPasswordHistory]'
GO
DROP TABLE [dbo].[CmnPasswordHistory]
GO
PRINT N'Dropping [dbo].[CmnGUIKeywords]'
GO
DROP TABLE [dbo].[CmnGUIKeywords]
GO
PRINT N'Dropping [dbo].[CmnDMLParameterProcess]'
GO
DROP TABLE [dbo].[CmnDMLParameterProcess]
GO
PRINT N'Dropping [dbo].[CmnApplicationMessages]'
GO
DROP TABLE [dbo].[CmnApplicationMessages]
GO
PRINT N'Dropping [dbo].[CmnAfterSaveDML]'
GO
DROP TABLE [dbo].[CmnAfterSaveDML]
GO
PRINT N'Adding constraints to [dbo].[CmnCodeMaster]'
GO
ALTER TABLE [dbo].[CmnCodeMaster] ADD CONSTRAINT [DF__CmnCodeMa__SubTy__44CA3770] DEFAULT ((0)) FOR [SubType]
GO
ALTER TABLE [dbo].[CmnCodeMaster] ADD CONSTRAINT [DF__CmnCodeMa__Butto__45BE5BA9] DEFAULT ((0)) FOR [ButtonCategory]
GO
ALTER TABLE [dbo].[CmnCodeMaster] ADD CONSTRAINT [DF__CmnCodeMa__IsMul__46B27FE2] DEFAULT ((0)) FOR [IsMultipleApproval]
GO
ALTER TABLE [dbo].[CmnCodeMaster] ADD CONSTRAINT [DF__CmnCodeMa__IsDml__47A6A41B] DEFAULT ((1)) FOR [IsDml]
GO
PRINT N'Adding constraints to [dbo].[CmnFormTabs]'
GO
ALTER TABLE [dbo].[CmnFormTabs] ADD CONSTRAINT [DF__CmnFormTa__IsMob__625A9A57] DEFAULT ((1)) FOR [IsMobile]
GO
PRINT N'Adding constraints to [dbo].[CmnUserDetails]'
GO
ALTER TABLE [dbo].[CmnUserDetails] ADD CONSTRAINT [DF__CmnUserDe__MenuB__37703C52] DEFAULT ((0)) FOR [MenuBar]
GO
ALTER TABLE [dbo].[CmnUserDetails] ADD CONSTRAINT [DF__CmnUserDe__NotAc__3D2915A8] DEFAULT ((0)) FOR [NotActive]
GO

