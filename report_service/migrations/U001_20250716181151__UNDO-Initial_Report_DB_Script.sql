SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping foreign keys from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [FK_FormButtonConfig]
GO
PRINT N'Dropping foreign keys from [dbo].[FormRoleConfiguration]'
GO
ALTER TABLE [dbo].[FormRoleConfiguration] DROP CONSTRAINT [FK_FormRoleConfiguration]
GO
PRINT N'Dropping foreign keys from [dbo].[FormTabConfig]'
GO
ALTER TABLE [dbo].[FormTabConfig] DROP CONSTRAINT [FK_FormTabConfig]
GO
PRINT N'Dropping foreign keys from [dbo].[FormGroupboxConfig]'
GO
ALTER TABLE [dbo].[FormGroupboxConfig] DROP CONSTRAINT [FK_FormGroupboxConfig]
GO
PRINT N'Dropping constraints from [dbo].[ChartColumnConfig]'
GO
ALTER TABLE [dbo].[ChartColumnConfig] DROP CONSTRAINT [PK_ChartColumnConfig]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [PK_ChartDependentColumnConfig]
GO
PRINT N'Dropping constraints from [dbo].[ChartSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ChartSearchColumnConfig] DROP CONSTRAINT [PK_ChartSearchColumnConfig]
GO
PRINT N'Dropping constraints from [dbo].[DashboardConfiguration]'
GO
ALTER TABLE [dbo].[DashboardConfiguration] DROP CONSTRAINT [PK_DashboardConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[DashboardReportDataSource]'
GO
ALTER TABLE [dbo].[DashboardReportDataSource] DROP CONSTRAINT [PK_DashboardReportDataSource]
GO
PRINT N'Dropping constraints from [dbo].[FormAdditionalPropertyConfig]'
GO
ALTER TABLE [dbo].[FormAdditionalPropertyConfig] DROP CONSTRAINT [PK_FormAdditionalPropertyConfig]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessConfig]'
GO
ALTER TABLE [dbo].[FormBuildInProcessConfig] DROP CONSTRAINT [PK_FormBuildInProcessConfig]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessControls]'
GO
ALTER TABLE [dbo].[FormBuildInProcessControls] DROP CONSTRAINT [PK_FormBuildInProcessControls]
GO
PRINT N'Dropping constraints from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [PK_FormButtonConfig]
GO
PRINT N'Dropping constraints from [dbo].[FormConfiguration]'
GO
ALTER TABLE [dbo].[FormConfiguration] DROP CONSTRAINT [PK_FormConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[FormControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[FormControlAutoGenerateConfig] DROP CONSTRAINT [PK_FormControlAutoGenerateConfig]
GO
PRINT N'Dropping constraints from [dbo].[FormControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[FormControlCodeAutoConfig] DROP CONSTRAINT [PK_FormControlCodeAutoConfig]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [PK_FormControlColumnsConfig]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [PK_FormControlConfig]
GO
PRINT N'Dropping constraints from [dbo].[FormControlMultilingual]'
GO
ALTER TABLE [dbo].[FormControlMultilingual] DROP CONSTRAINT [PK_FormControlMultilingual]
GO
PRINT N'Dropping constraints from [dbo].[FormControlPropertyConfig]'
GO
ALTER TABLE [dbo].[FormControlPropertyConfig] DROP CONSTRAINT [PK_FormControlPropertyConfig]
GO
PRINT N'Dropping constraints from [dbo].[FormEventConfigurationDetails]'
GO
ALTER TABLE [dbo].[FormEventConfigurationDetails] DROP CONSTRAINT [PK_FormEventConfigurationDetails]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [PK_FormGridControlColumnsConfig]
GO
PRINT N'Dropping constraints from [dbo].[FormGroupboxConfig]'
GO
ALTER TABLE [dbo].[FormGroupboxConfig] DROP CONSTRAINT [PK_FormGroupboxConfig]
GO
PRINT N'Dropping constraints from [dbo].[FormRoleConfiguration]'
GO
ALTER TABLE [dbo].[FormRoleConfiguration] DROP CONSTRAINT [PK_FormRoleConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsConfig]'
GO
ALTER TABLE [dbo].[FormSearchColumnsConfig] DROP CONSTRAINT [PK_FormSearchColumnsConfig]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsConfig]'
GO
ALTER TABLE [dbo].[FormSearchControlsConfig] DROP CONSTRAINT [PK_FormSearchControlsConfig]
GO
PRINT N'Dropping constraints from [dbo].[FormTabConfig]'
GO
ALTER TABLE [dbo].[FormTabConfig] DROP CONSTRAINT [PK_FormTabConfig]
GO
PRINT N'Dropping constraints from [dbo].[FormTableColumnList]'
GO
ALTER TABLE [dbo].[FormTableColumnList] DROP CONSTRAINT [PK_FormTableColumnList]
GO
PRINT N'Dropping constraints from [dbo].[FormTableList]'
GO
ALTER TABLE [dbo].[FormTableList] DROP CONSTRAINT [PK_FormTableList]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [PK_RepDependentColumnConfig]
GO
PRINT N'Dropping constraints from [dbo].[ReportConfiguration]'
GO
ALTER TABLE [dbo].[ReportConfiguration] DROP CONSTRAINT [PK_ReportConfiguration]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotResultColumnConfig] DROP CONSTRAINT [PK_ReportPivotResultColumnConfig]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotSearchColumnConfig] DROP CONSTRAINT [PK_ReportPivotSearchColumnConfig]
GO
PRINT N'Dropping constraints from [dbo].[ReportResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportResultColumnConfig] DROP CONSTRAINT [PK_ReportResultColumnConfig]
GO
PRINT N'Dropping constraints from [dbo].[ReportSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportSearchColumnConfig] DROP CONSTRAINT [PK_ReportSearchColumnConfig]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [PK_WorkflowControlColumnsConfig]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [PK_WorkflowControlConfig]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [PK_WorkflowGridControlColumnsConfig]
GO
PRINT N'Dropping constraints from [dbo].[ChartColumnConfig]'
GO
ALTER TABLE [dbo].[ChartColumnConfig] DROP CONSTRAINT [DF_ChartColumnConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[ChartColumnConfig]'
GO
ALTER TABLE [dbo].[ChartColumnConfig] DROP CONSTRAINT [DF_ChartColumnConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[ChartColumnConfig]'
GO
ALTER TABLE [dbo].[ChartColumnConfig] DROP CONSTRAINT [DF_ChartColumnConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[ChartColumnConfig]'
GO
ALTER TABLE [dbo].[ChartColumnConfig] DROP CONSTRAINT [DF_ChartColumnConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[ChartColumnConfig]'
GO
ALTER TABLE [dbo].[ChartColumnConfig] DROP CONSTRAINT [DF_ChartColumnConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[ChartColumnConfig]'
GO
ALTER TABLE [dbo].[ChartColumnConfig] DROP CONSTRAINT [DF_ChartColumnConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[ChartColumnProcess]'
GO
ALTER TABLE [dbo].[ChartColumnProcess] DROP CONSTRAINT [DF__ChartColu__Refer__70B1742B]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [DF_ChartDependentColumnConfig_MaxLength]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [DF__ChartDepe__Depen__6C23B3D1]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [DF_ChartDependentColumnConfig_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [DF_ChartDependentColumnConfig_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [DF_ChartDependentColumnConfig_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [DF_ChartDependentColumnConfig_IsIdentity]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [DF_ChartDependentColumnConfig_IsDmlControl]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [DF_ChartDependentColumnConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [DF_ChartDependentColumnConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [DF_ChartDependentColumnConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [DF_ChartDependentColumnConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [DF_ChartDependentColumnConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnConfig]'
GO
ALTER TABLE [dbo].[ChartDependentColumnConfig] DROP CONSTRAINT [DF_ChartDependentColumnConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnProcess]'
GO
ALTER TABLE [dbo].[ChartDependentColumnProcess] DROP CONSTRAINT [DF_ChartDependentColumnProcess_MaxLength]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnProcess]'
GO
ALTER TABLE [dbo].[ChartDependentColumnProcess] DROP CONSTRAINT [DF__ChartDepe__Depen__7C13E4D6]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnProcess]'
GO
ALTER TABLE [dbo].[ChartDependentColumnProcess] DROP CONSTRAINT [DF_ChartDependentColumnProcess_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnProcess]'
GO
ALTER TABLE [dbo].[ChartDependentColumnProcess] DROP CONSTRAINT [DF_ChartDependentColumnProcess_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[ChartDependentColumnProcess]'
GO
ALTER TABLE [dbo].[ChartDependentColumnProcess] DROP CONSTRAINT [DF_ChartDependentColumnProcess_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[ChartSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ChartSearchColumnConfig] DROP CONSTRAINT [DF__ChartSear__FkDel__2C96E50A]
GO
PRINT N'Dropping constraints from [dbo].[ChartSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ChartSearchColumnConfig] DROP CONSTRAINT [DF__ChartSear__FkNot__711C39F8]
GO
PRINT N'Dropping constraints from [dbo].[ChartSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ChartSearchColumnConfig] DROP CONSTRAINT [DF__ChartSear__FkVer__1DC5F2B0]
GO
PRINT N'Dropping constraints from [dbo].[ChartSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ChartSearchColumnConfig] DROP CONSTRAINT [DF_ChartSearchColumnConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[ChartSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ChartSearchColumnConfig] DROP CONSTRAINT [DF_ChartSearchColumnConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[ChartSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ChartSearchColumnConfig] DROP CONSTRAINT [DF_ChartSearchColumnConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[ChartSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ChartSearchColumnConfig] DROP CONSTRAINT [DF_ChartSearchColumnConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[ChartSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ChartSearchColumnConfig] DROP CONSTRAINT [DF_ChartSearchColumnConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[ChartSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ChartSearchColumnConfig] DROP CONSTRAINT [DF_ChartSearchColumnConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[ChartSearchColumnProcess]'
GO
ALTER TABLE [dbo].[ChartSearchColumnProcess] DROP CONSTRAINT [DF__ChartSear__FkDel__167886C3]
GO
PRINT N'Dropping constraints from [dbo].[ChartSearchColumnProcess]'
GO
ALTER TABLE [dbo].[ChartSearchColumnProcess] DROP CONSTRAINT [DF__ChartSear__FkNot__2E14FF44]
GO
PRINT N'Dropping constraints from [dbo].[ChartSearchColumnProcess]'
GO
ALTER TABLE [dbo].[ChartSearchColumnProcess] DROP CONSTRAINT [DF__ChartSear__FkVer__5A9C9B]
GO
PRINT N'Dropping constraints from [dbo].[DashboardConfiguration]'
GO
ALTER TABLE [dbo].[DashboardConfiguration] DROP CONSTRAINT [DF_DashboardConfiguration_DBConnection]
GO
PRINT N'Dropping constraints from [dbo].[DashboardConfiguration]'
GO
ALTER TABLE [dbo].[DashboardConfiguration] DROP CONSTRAINT [DF__Dashboard__IsMai__3A353BFF]
GO
PRINT N'Dropping constraints from [dbo].[DashboardConfiguration]'
GO
ALTER TABLE [dbo].[DashboardConfiguration] DROP CONSTRAINT [DF_DashboardConfiguration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[DashboardConfiguration]'
GO
ALTER TABLE [dbo].[DashboardConfiguration] DROP CONSTRAINT [DF_DashboardConfiguration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[DashboardConfiguration]'
GO
ALTER TABLE [dbo].[DashboardConfiguration] DROP CONSTRAINT [DF_DashboardConfiguration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[DashboardConfiguration]'
GO
ALTER TABLE [dbo].[DashboardConfiguration] DROP CONSTRAINT [DF_DashboardConfiguration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[DashboardConfiguration]'
GO
ALTER TABLE [dbo].[DashboardConfiguration] DROP CONSTRAINT [DF_DashboardConfiguration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[DashboardConfiguration]'
GO
ALTER TABLE [dbo].[DashboardConfiguration] DROP CONSTRAINT [DF_DashboardConfiguration_Version]
GO
PRINT N'Dropping constraints from [dbo].[DashboardReportDataSource]'
GO
ALTER TABLE [dbo].[DashboardReportDataSource] DROP CONSTRAINT [DF_DashboardReportDataSource_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[DashboardReportDataSource]'
GO
ALTER TABLE [dbo].[DashboardReportDataSource] DROP CONSTRAINT [DF_DashboardReportDataSource_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[DashboardReportDataSource]'
GO
ALTER TABLE [dbo].[DashboardReportDataSource] DROP CONSTRAINT [DF_DashboardReportDataSource_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[DashboardReportDataSource]'
GO
ALTER TABLE [dbo].[DashboardReportDataSource] DROP CONSTRAINT [DF_DashboardReportDataSource_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[DashboardReportDataSource]'
GO
ALTER TABLE [dbo].[DashboardReportDataSource] DROP CONSTRAINT [DF_DashboardReportDataSource_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[DashboardReportDataSource]'
GO
ALTER TABLE [dbo].[DashboardReportDataSource] DROP CONSTRAINT [DF_DashboardReportDataSource_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormAdditionalPropertyConfig]'
GO
ALTER TABLE [dbo].[FormAdditionalPropertyConfig] DROP CONSTRAINT [DF_FormAdditionalPropertyConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormAdditionalPropertyConfig]'
GO
ALTER TABLE [dbo].[FormAdditionalPropertyConfig] DROP CONSTRAINT [DF_FormAdditionalPropertyConfig_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormAdditionalPropertyConfig]'
GO
ALTER TABLE [dbo].[FormAdditionalPropertyConfig] DROP CONSTRAINT [DF_FormAdditionalPropertyConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormAdditionalPropertyConfig]'
GO
ALTER TABLE [dbo].[FormAdditionalPropertyConfig] DROP CONSTRAINT [DF_FormAdditionalPropertyConfig_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormAdditionalPropertyConfig]'
GO
ALTER TABLE [dbo].[FormAdditionalPropertyConfig] DROP CONSTRAINT [DF_FormAdditionalPropertyConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormAdditionalPropertyConfig]'
GO
ALTER TABLE [dbo].[FormAdditionalPropertyConfig] DROP CONSTRAINT [DF_FormAdditionalPropertyConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormAdditionalPropertyConfig]'
GO
ALTER TABLE [dbo].[FormAdditionalPropertyConfig] DROP CONSTRAINT [DF_FormAdditionalPropertyConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormAdditionalPropertyConfig]'
GO
ALTER TABLE [dbo].[FormAdditionalPropertyConfig] DROP CONSTRAINT [DF_FormAdditionalPropertyConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessConfig]'
GO
ALTER TABLE [dbo].[FormBuildInProcessConfig] DROP CONSTRAINT [DF_FormBuildInProcessConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessConfig]'
GO
ALTER TABLE [dbo].[FormBuildInProcessConfig] DROP CONSTRAINT [DF_FormBuildInProcessConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessConfig]'
GO
ALTER TABLE [dbo].[FormBuildInProcessConfig] DROP CONSTRAINT [DF_FormBuildInProcessConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessConfig]'
GO
ALTER TABLE [dbo].[FormBuildInProcessConfig] DROP CONSTRAINT [DF_FormBuildInProcessConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessConfig]'
GO
ALTER TABLE [dbo].[FormBuildInProcessConfig] DROP CONSTRAINT [DF_FormBuildInProcessConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessConfig]'
GO
ALTER TABLE [dbo].[FormBuildInProcessConfig] DROP CONSTRAINT [DF_FormBuildInProcessConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessControls]'
GO
ALTER TABLE [dbo].[FormBuildInProcessControls] DROP CONSTRAINT [DF__FormBuild__IsIde__1785CE2D]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessControls]'
GO
ALTER TABLE [dbo].[FormBuildInProcessControls] DROP CONSTRAINT [DF__FormBuild__IsVis__18BAD56A]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessControls]'
GO
ALTER TABLE [dbo].[FormBuildInProcessControls] DROP CONSTRAINT [DF_FormBuildInProcessControls_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessControls]'
GO
ALTER TABLE [dbo].[FormBuildInProcessControls] DROP CONSTRAINT [DF_FormBuildInProcessControls_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessControls]'
GO
ALTER TABLE [dbo].[FormBuildInProcessControls] DROP CONSTRAINT [DF_FormBuildInProcessControls_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessControls]'
GO
ALTER TABLE [dbo].[FormBuildInProcessControls] DROP CONSTRAINT [DF_FormBuildInProcessControls_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessControls]'
GO
ALTER TABLE [dbo].[FormBuildInProcessControls] DROP CONSTRAINT [DF_FormBuildInProcessControls_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormBuildInProcessControls]'
GO
ALTER TABLE [dbo].[FormBuildInProcessControls] DROP CONSTRAINT [DF_FormBuildInProcessControls_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [DF__FormButto__Butto__647BE6AE]
GO
PRINT N'Dropping constraints from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [DF__FormButto__IsMul__27C71436]
GO
PRINT N'Dropping constraints from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [DF__FormButto__IsDml__18166675]
GO
PRINT N'Dropping constraints from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [DF__FormButto__IsMob__241674F]
GO
PRINT N'Dropping constraints from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [DF_FormButtonConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [DF_FormButtonConfig_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [DF_FormButtonConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [DF_FormButtonConfig_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [DF_FormButtonConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [DF_FormButtonConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [DF_FormButtonConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormButtonConfig]'
GO
ALTER TABLE [dbo].[FormButtonConfig] DROP CONSTRAINT [DF_FormButtonConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormConfiguration]'
GO
ALTER TABLE [dbo].[FormConfiguration] DROP CONSTRAINT [DF__FormConfi__Foote__51D3C56D]
GO
PRINT N'Dropping constraints from [dbo].[FormConfiguration]'
GO
ALTER TABLE [dbo].[FormConfiguration] DROP CONSTRAINT [DF_FormConfiguration_IsWorkflow]
GO
PRINT N'Dropping constraints from [dbo].[FormConfiguration]'
GO
ALTER TABLE [dbo].[FormConfiguration] DROP CONSTRAINT [DF_FormConfiguration_IsMobileMenu]
GO
PRINT N'Dropping constraints from [dbo].[FormConfiguration]'
GO
ALTER TABLE [dbo].[FormConfiguration] DROP CONSTRAINT [DF_FormConfiguration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormConfiguration]'
GO
ALTER TABLE [dbo].[FormConfiguration] DROP CONSTRAINT [DF_FormConfiguration_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormConfiguration]'
GO
ALTER TABLE [dbo].[FormConfiguration] DROP CONSTRAINT [DF_FormConfiguration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormConfiguration]'
GO
ALTER TABLE [dbo].[FormConfiguration] DROP CONSTRAINT [DF_FormConfiguration_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormConfiguration]'
GO
ALTER TABLE [dbo].[FormConfiguration] DROP CONSTRAINT [DF_FormConfiguration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormConfiguration]'
GO
ALTER TABLE [dbo].[FormConfiguration] DROP CONSTRAINT [DF_FormConfiguration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormConfiguration]'
GO
ALTER TABLE [dbo].[FormConfiguration] DROP CONSTRAINT [DF_FormConfiguration_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormConfiguration]'
GO
ALTER TABLE [dbo].[FormConfiguration] DROP CONSTRAINT [DF_FormConfiguration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[FormControlAutoGenerateConfig] DROP CONSTRAINT [DF_FormControlAutoGenerateConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[FormControlAutoGenerateConfig] DROP CONSTRAINT [DF_FormControlAutoGenerateConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[FormControlAutoGenerateConfig] DROP CONSTRAINT [DF_FormControlAutoGenerateConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[FormControlAutoGenerateConfig] DROP CONSTRAINT [DF_FormControlAutoGenerateConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[FormControlAutoGenerateConfig] DROP CONSTRAINT [DF_FormControlAutoGenerateConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormControlAutoGenerateConfig]'
GO
ALTER TABLE [dbo].[FormControlAutoGenerateConfig] DROP CONSTRAINT [DF_FormControlAutoGenerateConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[FormControlCodeAutoConfig] DROP CONSTRAINT [DF_FormControlCodeAutoConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[FormControlCodeAutoConfig] DROP CONSTRAINT [DF_FormControlCodeAutoConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[FormControlCodeAutoConfig] DROP CONSTRAINT [DF_FormControlCodeAutoConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[FormControlCodeAutoConfig] DROP CONSTRAINT [DF_FormControlCodeAutoConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[FormControlCodeAutoConfig] DROP CONSTRAINT [DF_FormControlCodeAutoConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormControlCodeAutoConfig]'
GO
ALTER TABLE [dbo].[FormControlCodeAutoConfig] DROP CONSTRAINT [DF_FormControlCodeAutoConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_Readonly]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_IsMandatory]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_SearchApplicable]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_SelectApplicable]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_IsIdentity]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_IsDmlControl]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_FkShowActive]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_VersionCheck]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF__FormContr__Depen__23BC79AD]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF__FormContr__Selec__54FDF98B]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF__FormContr__IsCur__42101B88]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF__FormContr__IsInd__7C335DED]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF__FormContr__IsNoU__6EE49B0C]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormControlColumnsConfig] DROP CONSTRAINT [DF_FormControlColumnsConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF_FormControlColumnsProcess_Readonly]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF_FormControlColumnsProcess_IsMandatory]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF_FormControlColumnsProcess_SearchApplicable]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF_FormControlColumnsProcess_SelectApplicable]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF_FormControlColumnsProcess_IsIdentity]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF_FormControlColumnsProcess_IsDmlControl]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF__FormContr__IsUTC__56140A3C]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF__FormContr__IsCur__703560FA]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF__FormContr__IsInd__5337CD1E]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF_FormControlColumnsProcess_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF_FormControlColumnsProcess_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF_FormControlColumnsProcess_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF_FormControlColumnsProcess_FkShowActive]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF_FormControlColumnsProcess_VersionCheck]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF__FormContr__Depen__496BC3E2]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF__FormContr__Selec__7147BE2]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF__FormContr__IsUpl__8CCDC0C]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF__FormContr__IsDow__53A125F9]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF__FormContr__IsVie__16CE4E0A]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF__FormContr__IsDel__6ED5AED3]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF__FormContr__IsPri__2887E7FF]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF__FormContr__GridT__7B8AD077]
GO
PRINT N'Dropping constraints from [dbo].[FormControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormControlColumnsProcess] DROP CONSTRAINT [DF__FormContr__IsNoU__3AD62F23]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__Searc__7CC02117]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__IsEnc__37DA5EB0]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__IsRet__1A21DB49]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__IsNoA__567FD316]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__IsNoU__4CE26111]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__FillT__47B80980]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__Depen__5DC37469]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__Defau__347E3671]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__IsCur__2B459567]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__IsInd__5F5DF9A9]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__FkDel__6C78E09E]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__FkNot__275C907F]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__FkVer__17BD8A98]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__FkSho__11305909]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF__FormContr__Versi__CA2798D]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF_FormControlConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF_FormControlConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF_FormControlConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF_FormControlConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF_FormControlConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormControlConfig]'
GO
ALTER TABLE [dbo].[FormControlConfig] DROP CONSTRAINT [DF_FormControlConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormControlMultilingual]'
GO
ALTER TABLE [dbo].[FormControlMultilingual] DROP CONSTRAINT [DF_FormControlMultilingual_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormControlMultilingual]'
GO
ALTER TABLE [dbo].[FormControlMultilingual] DROP CONSTRAINT [DF_FormControlMultilingual_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormControlMultilingual]'
GO
ALTER TABLE [dbo].[FormControlMultilingual] DROP CONSTRAINT [DF_FormControlMultilingual_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormControlMultilingual]'
GO
ALTER TABLE [dbo].[FormControlMultilingual] DROP CONSTRAINT [DF_FormControlMultilingual_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormControlMultilingual]'
GO
ALTER TABLE [dbo].[FormControlMultilingual] DROP CONSTRAINT [DF_FormControlMultilingual_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormControlMultilingual]'
GO
ALTER TABLE [dbo].[FormControlMultilingual] DROP CONSTRAINT [DF_FormControlMultilingual_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormControlPropertyConfig]'
GO
ALTER TABLE [dbo].[FormControlPropertyConfig] DROP CONSTRAINT [DF_FormControlPropertyConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormControlPropertyConfig]'
GO
ALTER TABLE [dbo].[FormControlPropertyConfig] DROP CONSTRAINT [DF_FormControlPropertyConfig_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormControlPropertyConfig]'
GO
ALTER TABLE [dbo].[FormControlPropertyConfig] DROP CONSTRAINT [DF_FormControlPropertyConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormControlPropertyConfig]'
GO
ALTER TABLE [dbo].[FormControlPropertyConfig] DROP CONSTRAINT [DF_FormControlPropertyConfig_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormControlPropertyConfig]'
GO
ALTER TABLE [dbo].[FormControlPropertyConfig] DROP CONSTRAINT [DF_FormControlPropertyConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormControlPropertyConfig]'
GO
ALTER TABLE [dbo].[FormControlPropertyConfig] DROP CONSTRAINT [DF_FormControlPropertyConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormControlPropertyConfig]'
GO
ALTER TABLE [dbo].[FormControlPropertyConfig] DROP CONSTRAINT [DF_FormControlPropertyConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormControlPropertyConfig]'
GO
ALTER TABLE [dbo].[FormControlPropertyConfig] DROP CONSTRAINT [DF_FormControlPropertyConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__Searc__5A50F93]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__IsEnc__1EA63DAF]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__IsRet__43CE9C6C]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__IsNoA__4BA7F9A4]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__IsNoU__3F8F2420]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__FillT__624BF669]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__Defau__791DE96C]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__Depen__5FFB4AA5]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__IsUTC__5FED13C8]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__IsCur__303FD950]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__IsInd__1BD86626]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__IsUpl__44B6B82E]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__IsDow__46EB2426]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__IsVie__DD5974A]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__IsDel__3E6EA444]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__IsFix__47DDF224]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__FkDel__70E1B5B9]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__FkNot__7DE0EBB8]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__FkVer__3E27322E]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__FkSho__6D747E02]
GO
PRINT N'Dropping constraints from [dbo].[FormControlsProcess]'
GO
ALTER TABLE [dbo].[FormControlsProcess] DROP CONSTRAINT [DF__FormContr__Versi__27532B2E]
GO
PRINT N'Dropping constraints from [dbo].[FormEventConfigurationDetails]'
GO
ALTER TABLE [dbo].[FormEventConfigurationDetails] DROP CONSTRAINT [DF_FormEventConfigurationDetails_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormEventConfigurationDetails]'
GO
ALTER TABLE [dbo].[FormEventConfigurationDetails] DROP CONSTRAINT [DF_FormEventConfigurationDetails_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormEventConfigurationDetails]'
GO
ALTER TABLE [dbo].[FormEventConfigurationDetails] DROP CONSTRAINT [DF_FormEventConfigurationDetails_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormEventConfigurationDetails]'
GO
ALTER TABLE [dbo].[FormEventConfigurationDetails] DROP CONSTRAINT [DF_FormEventConfigurationDetails_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormEventConfigurationDetails]'
GO
ALTER TABLE [dbo].[FormEventConfigurationDetails] DROP CONSTRAINT [DF_FormEventConfigurationDetails_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormEventConfigurationDetails]'
GO
ALTER TABLE [dbo].[FormEventConfigurationDetails] DROP CONSTRAINT [DF_FormEventConfigurationDetails_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormEventConfigurationDetails]'
GO
ALTER TABLE [dbo].[FormEventConfigurationDetails] DROP CONSTRAINT [DF_FormEventConfigurationDetails_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormEventConfigurationDetails]'
GO
ALTER TABLE [dbo].[FormEventConfigurationDetails] DROP CONSTRAINT [DF_FormEventConfigurationDetails_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_Readonly]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_IsMandatory]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_SearchApplicable]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_SelectApplicable]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_IsIdentity]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_IsDmlControl]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF__FormGridC__Selec__4E9B3D2D]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF__FormGridC__IsDat__28EDB359]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF__FormGridC__IsCur__5F594AD2]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF__FormGridC__Depen__4389CE23]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_FkShowActive]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_VersionCheck]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsConfig] DROP CONSTRAINT [DF_FormGridControlColumnsConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF_FormGridControlColumnsProcess_Readonly]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF_FormGridControlColumnsProcess_IsMandatory]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF_FormGridControlColumnsProcess_SearchApplicable]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF_FormGridControlColumnsProcess_SelectApplicable]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF_FormGridControlColumnsProcess_IsIdentity]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF_FormGridControlColumnsProcess_IsDmlControl]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF_FormGridControlColumnsProcess_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF_FormGridControlColumnsProcess_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF_FormGridControlColumnsProcess_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF_FormGridControlColumnsProcess_FkShowActive]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF_FormGridControlColumnsProcess_VersionCheck]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF__FormGridC__Depen__6B06524F]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF__FormGridC__Selec__76AEDF57]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF__FormGridC__IsDat__3BA7EDB9]
GO
PRINT N'Dropping constraints from [dbo].[FormGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[FormGridControlColumnsProcess] DROP CONSTRAINT [DF__FormGridC__IsCur__1F3226EF]
GO
PRINT N'Dropping constraints from [dbo].[FormGroupboxConfig]'
GO
ALTER TABLE [dbo].[FormGroupboxConfig] DROP CONSTRAINT [DF__FormGroup__Butto__BA725C2]
GO
PRINT N'Dropping constraints from [dbo].[FormGroupboxConfig]'
GO
ALTER TABLE [dbo].[FormGroupboxConfig] DROP CONSTRAINT [DF__FormGroup__IsMob__238BC6EF]
GO
PRINT N'Dropping constraints from [dbo].[FormGroupboxConfig]'
GO
ALTER TABLE [dbo].[FormGroupboxConfig] DROP CONSTRAINT [DF_FormGroupboxConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormGroupboxConfig]'
GO
ALTER TABLE [dbo].[FormGroupboxConfig] DROP CONSTRAINT [DF_FormGroupboxConfig_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormGroupboxConfig]'
GO
ALTER TABLE [dbo].[FormGroupboxConfig] DROP CONSTRAINT [DF_FormGroupboxConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormGroupboxConfig]'
GO
ALTER TABLE [dbo].[FormGroupboxConfig] DROP CONSTRAINT [DF_FormGroupboxConfig_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormGroupboxConfig]'
GO
ALTER TABLE [dbo].[FormGroupboxConfig] DROP CONSTRAINT [DF_FormGroupboxConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormGroupboxConfig]'
GO
ALTER TABLE [dbo].[FormGroupboxConfig] DROP CONSTRAINT [DF_FormGroupboxConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormGroupboxConfig]'
GO
ALTER TABLE [dbo].[FormGroupboxConfig] DROP CONSTRAINT [DF_FormGroupboxConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormGroupboxConfig]'
GO
ALTER TABLE [dbo].[FormGroupboxConfig] DROP CONSTRAINT [DF_FormGroupboxConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormRoleConfiguration]'
GO
ALTER TABLE [dbo].[FormRoleConfiguration] DROP CONSTRAINT [DF_FormRoleConfiguration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormRoleConfiguration]'
GO
ALTER TABLE [dbo].[FormRoleConfiguration] DROP CONSTRAINT [DF_FormRoleConfiguration_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormRoleConfiguration]'
GO
ALTER TABLE [dbo].[FormRoleConfiguration] DROP CONSTRAINT [DF_FormRoleConfiguration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormRoleConfiguration]'
GO
ALTER TABLE [dbo].[FormRoleConfiguration] DROP CONSTRAINT [DF_FormRoleConfiguration_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormRoleConfiguration]'
GO
ALTER TABLE [dbo].[FormRoleConfiguration] DROP CONSTRAINT [DF_FormRoleConfiguration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormRoleConfiguration]'
GO
ALTER TABLE [dbo].[FormRoleConfiguration] DROP CONSTRAINT [DF_FormRoleConfiguration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormRoleConfiguration]'
GO
ALTER TABLE [dbo].[FormRoleConfiguration] DROP CONSTRAINT [DF_FormRoleConfiguration_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormRoleConfiguration]'
GO
ALTER TABLE [dbo].[FormRoleConfiguration] DROP CONSTRAINT [DF_FormRoleConfiguration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsConfig]'
GO
ALTER TABLE [dbo].[FormSearchColumnsConfig] DROP CONSTRAINT [DF_FormSearchColumnsConfig_MaxLength]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsConfig]'
GO
ALTER TABLE [dbo].[FormSearchColumnsConfig] DROP CONSTRAINT [DF__FormSearc__Depen__103086E1]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsConfig]'
GO
ALTER TABLE [dbo].[FormSearchColumnsConfig] DROP CONSTRAINT [DF_FormSearchColumnsConfig_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsConfig]'
GO
ALTER TABLE [dbo].[FormSearchColumnsConfig] DROP CONSTRAINT [DF_FormSearchColumnsConfig_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsConfig]'
GO
ALTER TABLE [dbo].[FormSearchColumnsConfig] DROP CONSTRAINT [DF_FormSearchColumnsConfig_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsConfig]'
GO
ALTER TABLE [dbo].[FormSearchColumnsConfig] DROP CONSTRAINT [DF_FormSearchColumnsConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsConfig]'
GO
ALTER TABLE [dbo].[FormSearchColumnsConfig] DROP CONSTRAINT [DF_FormSearchColumnsConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsConfig]'
GO
ALTER TABLE [dbo].[FormSearchColumnsConfig] DROP CONSTRAINT [DF_FormSearchColumnsConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsConfig]'
GO
ALTER TABLE [dbo].[FormSearchColumnsConfig] DROP CONSTRAINT [DF_FormSearchColumnsConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsConfig]'
GO
ALTER TABLE [dbo].[FormSearchColumnsConfig] DROP CONSTRAINT [DF_FormSearchColumnsConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsConfig]'
GO
ALTER TABLE [dbo].[FormSearchColumnsConfig] DROP CONSTRAINT [DF_FormSearchColumnsConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsProcess]'
GO
ALTER TABLE [dbo].[FormSearchColumnsProcess] DROP CONSTRAINT [DF_FormSearchColumnsProcess_MaxLength]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsProcess]'
GO
ALTER TABLE [dbo].[FormSearchColumnsProcess] DROP CONSTRAINT [DF__FormSearc__Depen__1F2DBC95]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsProcess]'
GO
ALTER TABLE [dbo].[FormSearchColumnsProcess] DROP CONSTRAINT [DF_FormSearchColumnsProcess_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsProcess]'
GO
ALTER TABLE [dbo].[FormSearchColumnsProcess] DROP CONSTRAINT [DF_FormSearchColumnsProcess_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchColumnsProcess]'
GO
ALTER TABLE [dbo].[FormSearchColumnsProcess] DROP CONSTRAINT [DF_FormSearchColumnsProcess_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsConfig]'
GO
ALTER TABLE [dbo].[FormSearchControlsConfig] DROP CONSTRAINT [DF_FormSearchControlsConfig_MaxLength]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsConfig]'
GO
ALTER TABLE [dbo].[FormSearchControlsConfig] DROP CONSTRAINT [DF__FormSearc__Depen__4207832E]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsConfig]'
GO
ALTER TABLE [dbo].[FormSearchControlsConfig] DROP CONSTRAINT [DF_FormSearchControlsConfig_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsConfig]'
GO
ALTER TABLE [dbo].[FormSearchControlsConfig] DROP CONSTRAINT [DF_FormSearchControlsConfig_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsConfig]'
GO
ALTER TABLE [dbo].[FormSearchControlsConfig] DROP CONSTRAINT [DF_FormSearchControlsConfig_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsConfig]'
GO
ALTER TABLE [dbo].[FormSearchControlsConfig] DROP CONSTRAINT [DF_FormSearchControlsConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsConfig]'
GO
ALTER TABLE [dbo].[FormSearchControlsConfig] DROP CONSTRAINT [DF_FormSearchControlsConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsConfig]'
GO
ALTER TABLE [dbo].[FormSearchControlsConfig] DROP CONSTRAINT [DF_FormSearchControlsConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsConfig]'
GO
ALTER TABLE [dbo].[FormSearchControlsConfig] DROP CONSTRAINT [DF_FormSearchControlsConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsConfig]'
GO
ALTER TABLE [dbo].[FormSearchControlsConfig] DROP CONSTRAINT [DF_FormSearchControlsConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsConfig]'
GO
ALTER TABLE [dbo].[FormSearchControlsConfig] DROP CONSTRAINT [DF_FormSearchControlsConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsProcess]'
GO
ALTER TABLE [dbo].[FormSearchControlsProcess] DROP CONSTRAINT [DF_FormSearchControlsProcess_MaxLength]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsProcess]'
GO
ALTER TABLE [dbo].[FormSearchControlsProcess] DROP CONSTRAINT [DF__FormSearc__Depen__1B876282]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsProcess]'
GO
ALTER TABLE [dbo].[FormSearchControlsProcess] DROP CONSTRAINT [DF_FormSearchControlsProcess_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsProcess]'
GO
ALTER TABLE [dbo].[FormSearchControlsProcess] DROP CONSTRAINT [DF_FormSearchControlsProcess_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormSearchControlsProcess]'
GO
ALTER TABLE [dbo].[FormSearchControlsProcess] DROP CONSTRAINT [DF_FormSearchControlsProcess_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormTabConfig]'
GO
ALTER TABLE [dbo].[FormTabConfig] DROP CONSTRAINT [DF__FormTabCo__IsMob__6CE442A4]
GO
PRINT N'Dropping constraints from [dbo].[FormTabConfig]'
GO
ALTER TABLE [dbo].[FormTabConfig] DROP CONSTRAINT [DF_FormTabConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormTabConfig]'
GO
ALTER TABLE [dbo].[FormTabConfig] DROP CONSTRAINT [DF_FormTabConfig_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormTabConfig]'
GO
ALTER TABLE [dbo].[FormTabConfig] DROP CONSTRAINT [DF_FormTabConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormTabConfig]'
GO
ALTER TABLE [dbo].[FormTabConfig] DROP CONSTRAINT [DF_FormTabConfig_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormTabConfig]'
GO
ALTER TABLE [dbo].[FormTabConfig] DROP CONSTRAINT [DF_FormTabConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormTabConfig]'
GO
ALTER TABLE [dbo].[FormTabConfig] DROP CONSTRAINT [DF_FormTabConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormTabConfig]'
GO
ALTER TABLE [dbo].[FormTabConfig] DROP CONSTRAINT [DF_FormTabConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormTabConfig]'
GO
ALTER TABLE [dbo].[FormTabConfig] DROP CONSTRAINT [DF_FormTabConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormTableColumnList]'
GO
ALTER TABLE [dbo].[FormTableColumnList] DROP CONSTRAINT [DF__FormTable__IsLin__2288EEDB]
GO
PRINT N'Dropping constraints from [dbo].[FormTableColumnList]'
GO
ALTER TABLE [dbo].[FormTableColumnList] DROP CONSTRAINT [DF__FormTable__Dropp__24933189]
GO
PRINT N'Dropping constraints from [dbo].[FormTableColumnList]'
GO
ALTER TABLE [dbo].[FormTableColumnList] DROP CONSTRAINT [DF__FormTable__IsInd__72BFAC48]
GO
PRINT N'Dropping constraints from [dbo].[FormTableColumnList]'
GO
ALTER TABLE [dbo].[FormTableColumnList] DROP CONSTRAINT [DF_FormTableColumnList_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormTableColumnList]'
GO
ALTER TABLE [dbo].[FormTableColumnList] DROP CONSTRAINT [DF_FormTableColumnList_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormTableColumnList]'
GO
ALTER TABLE [dbo].[FormTableColumnList] DROP CONSTRAINT [DF_FormTableColumnList_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormTableColumnList]'
GO
ALTER TABLE [dbo].[FormTableColumnList] DROP CONSTRAINT [DF_FormTableColumnList_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormTableColumnList]'
GO
ALTER TABLE [dbo].[FormTableColumnList] DROP CONSTRAINT [DF_FormTableColumnList_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormTableColumnList]'
GO
ALTER TABLE [dbo].[FormTableColumnList] DROP CONSTRAINT [DF_FormTableColumnList_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormTableColumnList]'
GO
ALTER TABLE [dbo].[FormTableColumnList] DROP CONSTRAINT [DF_FormTableColumnList_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormTableColumnList]'
GO
ALTER TABLE [dbo].[FormTableColumnList] DROP CONSTRAINT [DF_FormTableColumnList_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[FormTableList]'
GO
ALTER TABLE [dbo].[FormTableList] DROP CONSTRAINT [DF_FormTableList_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormTableList]'
GO
ALTER TABLE [dbo].[FormTableList] DROP CONSTRAINT [DF_FormTableList_CreatedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormTableList]'
GO
ALTER TABLE [dbo].[FormTableList] DROP CONSTRAINT [DF_FormTableList_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[FormTableList]'
GO
ALTER TABLE [dbo].[FormTableList] DROP CONSTRAINT [DF_FormTableList_ModifiedDateGMT]
GO
PRINT N'Dropping constraints from [dbo].[FormTableList]'
GO
ALTER TABLE [dbo].[FormTableList] DROP CONSTRAINT [DF_FormTableList_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[FormTableList]'
GO
ALTER TABLE [dbo].[FormTableList] DROP CONSTRAINT [DF_FormTableList_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[FormTableList]'
GO
ALTER TABLE [dbo].[FormTableList] DROP CONSTRAINT [DF_FormTableList_Version]
GO
PRINT N'Dropping constraints from [dbo].[FormTableList]'
GO
ALTER TABLE [dbo].[FormTableList] DROP CONSTRAINT [DF_FormTableList_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [DF_RepDependentColumnConfig_MaxLength]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [DF__RepDepend__Depen__446D937F]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [DF_RepDependentColumnConfig_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [DF_RepDependentColumnConfig_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [DF_RepDependentColumnConfig_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [DF_RepDependentColumnConfig_IsIdentity]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [DF_RepDependentColumnConfig_IsDmlControl]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [DF_RepDependentColumnConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [DF_RepDependentColumnConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [DF_RepDependentColumnConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [DF_RepDependentColumnConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [DF_RepDependentColumnConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnConfig]'
GO
ALTER TABLE [dbo].[RepDependentColumnConfig] DROP CONSTRAINT [DF_RepDependentColumnConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnProcess]'
GO
ALTER TABLE [dbo].[RepDependentColumnProcess] DROP CONSTRAINT [DF_RepDependentColumnProcess_MaxLength]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnProcess]'
GO
ALTER TABLE [dbo].[RepDependentColumnProcess] DROP CONSTRAINT [DF__RepDepend__Depen__CB4DD52]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnProcess]'
GO
ALTER TABLE [dbo].[RepDependentColumnProcess] DROP CONSTRAINT [DF_RepDependentColumnProcess_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnProcess]'
GO
ALTER TABLE [dbo].[RepDependentColumnProcess] DROP CONSTRAINT [DF_RepDependentColumnProcess_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[RepDependentColumnProcess]'
GO
ALTER TABLE [dbo].[RepDependentColumnProcess] DROP CONSTRAINT [DF_RepDependentColumnProcess_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[ReportConfiguration]'
GO
ALTER TABLE [dbo].[ReportConfiguration] DROP CONSTRAINT [DF_ReportConfiguration_DBConnection]
GO
PRINT N'Dropping constraints from [dbo].[ReportConfiguration]'
GO
ALTER TABLE [dbo].[ReportConfiguration] DROP CONSTRAINT [DF_ReportConfiguration_PivotReport]
GO
PRINT N'Dropping constraints from [dbo].[ReportConfiguration]'
GO
ALTER TABLE [dbo].[ReportConfiguration] DROP CONSTRAINT [DF__ReportCon__IsMai__3AE718ED]
GO
PRINT N'Dropping constraints from [dbo].[ReportConfiguration]'
GO
ALTER TABLE [dbo].[ReportConfiguration] DROP CONSTRAINT [DF_ReportConfiguration_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReportConfiguration]'
GO
ALTER TABLE [dbo].[ReportConfiguration] DROP CONSTRAINT [DF_ReportConfiguration_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReportConfiguration]'
GO
ALTER TABLE [dbo].[ReportConfiguration] DROP CONSTRAINT [DF_ReportConfiguration_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[ReportConfiguration]'
GO
ALTER TABLE [dbo].[ReportConfiguration] DROP CONSTRAINT [DF_ReportConfiguration_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[ReportConfiguration]'
GO
ALTER TABLE [dbo].[ReportConfiguration] DROP CONSTRAINT [DF_ReportConfiguration_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[ReportConfiguration]'
GO
ALTER TABLE [dbo].[ReportConfiguration] DROP CONSTRAINT [DF_ReportConfiguration_Version]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotResultColumnConfig] DROP CONSTRAINT [DF__ReportPiv__Dashb__6C704015]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotResultColumnConfig] DROP CONSTRAINT [DF_ReportPivotResultColumnConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotResultColumnConfig] DROP CONSTRAINT [DF_ReportPivotResultColumnConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotResultColumnConfig] DROP CONSTRAINT [DF_ReportPivotResultColumnConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotResultColumnConfig] DROP CONSTRAINT [DF_ReportPivotResultColumnConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotResultColumnConfig] DROP CONSTRAINT [DF_ReportPivotResultColumnConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotResultColumnConfig] DROP CONSTRAINT [DF_ReportPivotResultColumnConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotSearchColumnConfig] DROP CONSTRAINT [DF__ReportPiv__Dashb__4389CBDE]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotSearchColumnConfig] DROP CONSTRAINT [DF_ReportPivotSearchColumnConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotSearchColumnConfig] DROP CONSTRAINT [DF_ReportPivotSearchColumnConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotSearchColumnConfig] DROP CONSTRAINT [DF_ReportPivotSearchColumnConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotSearchColumnConfig] DROP CONSTRAINT [DF_ReportPivotSearchColumnConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotSearchColumnConfig] DROP CONSTRAINT [DF_ReportPivotSearchColumnConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[ReportPivotSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportPivotSearchColumnConfig] DROP CONSTRAINT [DF_ReportPivotSearchColumnConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[ReportResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportResultColumnConfig] DROP CONSTRAINT [DF__ReportRes__Repor__6C58CBAF]
GO
PRINT N'Dropping constraints from [dbo].[ReportResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportResultColumnConfig] DROP CONSTRAINT [DF__ReportRes__Dashb__1098BF56]
GO
PRINT N'Dropping constraints from [dbo].[ReportResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportResultColumnConfig] DROP CONSTRAINT [DF_ReportResultColumnConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReportResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportResultColumnConfig] DROP CONSTRAINT [DF_ReportResultColumnConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReportResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportResultColumnConfig] DROP CONSTRAINT [DF_ReportResultColumnConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[ReportResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportResultColumnConfig] DROP CONSTRAINT [DF_ReportResultColumnConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[ReportResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportResultColumnConfig] DROP CONSTRAINT [DF_ReportResultColumnConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[ReportResultColumnConfig]'
GO
ALTER TABLE [dbo].[ReportResultColumnConfig] DROP CONSTRAINT [DF_ReportResultColumnConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[ReportResultColumnProcess]'
GO
ALTER TABLE [dbo].[ReportResultColumnProcess] DROP CONSTRAINT [DF__ReportRes__Repor__6E85CF4E]
GO
PRINT N'Dropping constraints from [dbo].[ReportResultColumnProcess]'
GO
ALTER TABLE [dbo].[ReportResultColumnProcess] DROP CONSTRAINT [DF__ReportRes__Dashb__7EFD2C63]
GO
PRINT N'Dropping constraints from [dbo].[ReportSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportSearchColumnConfig] DROP CONSTRAINT [DF__ReportSea__FkDel__50A47BA3]
GO
PRINT N'Dropping constraints from [dbo].[ReportSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportSearchColumnConfig] DROP CONSTRAINT [DF__ReportSea__FkNot__31D7460A]
GO
PRINT N'Dropping constraints from [dbo].[ReportSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportSearchColumnConfig] DROP CONSTRAINT [DF__ReportSea__FkVer__ADD467]
GO
PRINT N'Dropping constraints from [dbo].[ReportSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportSearchColumnConfig] DROP CONSTRAINT [DF_ReportSearchColumnConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReportSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportSearchColumnConfig] DROP CONSTRAINT [DF_ReportSearchColumnConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[ReportSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportSearchColumnConfig] DROP CONSTRAINT [DF_ReportSearchColumnConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[ReportSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportSearchColumnConfig] DROP CONSTRAINT [DF_ReportSearchColumnConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[ReportSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportSearchColumnConfig] DROP CONSTRAINT [DF_ReportSearchColumnConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[ReportSearchColumnConfig]'
GO
ALTER TABLE [dbo].[ReportSearchColumnConfig] DROP CONSTRAINT [DF_ReportSearchColumnConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[ReportSearchColumnProcess]'
GO
ALTER TABLE [dbo].[ReportSearchColumnProcess] DROP CONSTRAINT [DF__ReportSea__FkDel__537022BE]
GO
PRINT N'Dropping constraints from [dbo].[ReportSearchColumnProcess]'
GO
ALTER TABLE [dbo].[ReportSearchColumnProcess] DROP CONSTRAINT [DF__ReportSea__FkNot__70B16BC1]
GO
PRINT N'Dropping constraints from [dbo].[ReportSearchColumnProcess]'
GO
ALTER TABLE [dbo].[ReportSearchColumnProcess] DROP CONSTRAINT [DF__ReportSea__FkVer__3BD33655]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_Readonly]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_IsMandatory]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_SearchApplicable]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_SelectApplicable]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_IsIdentity]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_IsDmlControl]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowC__IsUTC__2C3099F5]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_FkShowActive]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_VersionCheck]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowC__Depen__5359051B]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowC__Selec__6647CFE9]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowC__IsCur__5C53A643]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowC__IsInd__680EEA46]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowC__IsUpl__451A4C7E]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowC__IsDow__3E840B2C]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowC__IsVie__53623EE9]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowC__IsDel__37F2DE]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowC__IsPri__3F3AAEC3]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowC__GridT__59D7717C]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowC__IsNoU__7833B8C8]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowControlColumnsConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowControlColumnsProcess_Readonly]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowControlColumnsProcess_IsMandatory]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowControlColumnsProcess_SearchApplicable]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowControlColumnsProcess_SelectApplicable]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowControlColumnsProcess_IsIdentity]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowControlColumnsProcess_IsDmlControl]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowC__IsUTC__759525F4]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowC__IsCur__4C4682D7]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowC__IsInd__53CE6C71]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowControlColumnsProcess_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowControlColumnsProcess_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowControlColumnsProcess_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowControlColumnsProcess_FkShowActive]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowControlColumnsProcess_VersionCheck]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowC__Depen__28A129DE]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowC__Selec__35D4E5B1]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowC__IsUpl__474641B7]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowC__IsDow__730737F2]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowC__IsVie__27F67CD6]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowC__IsDel__8241424]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowC__IsPri__6710C77B]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowC__GridT__3759A564]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowC__IsNoU__1B4A5B3]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__Searc__1932C16A]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__IsEnc__6DB081B4]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__IsRet__1A51ABEE]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__IsNoA__F6E90EB]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__IsNoU__13075602]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__FillT__FEA5CF9]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__Depen__783CECF]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__Defau__287D2C52]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__IsUTC__C1696CE]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__IsCur__EC5AAF7]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__IsInd__82889B2]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__IsUpl__6C09B1A8]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__IsDow__2FBBBABE]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__IsVie__1C875903]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__IsDel__1072612]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__IsFix__C92D67F]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__FkDel__71B2DF69]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__FkNot__6B8A8268]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__FkVer__368FD2C6]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__FkSho__5DD975FA]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF__WorkflowC__Versi__49111728]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF_WorkflowControlConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF_WorkflowControlConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF_WorkflowControlConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF_WorkflowControlConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF_WorkflowControlConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlConfig]'
GO
ALTER TABLE [dbo].[WorkflowControlConfig] DROP CONSTRAINT [DF_WorkflowControlConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__Searc__1E02E791]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__IsEnc__5BF537DD]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__IsRet__4F4703B6]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__IsNoA__55C32168]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__IsNoU__8562368]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__FillT__71CDA9F5]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__Defau__499676F7]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__Depen__D434453]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__IsUTC__3BA2637D]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__IsCur__715965B1]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__IsInd__43D4196A]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__IsUpl__E273A20]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__IsDow__5D18FF88]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__IsVie__2949B2DE]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__IsDel__46F37A06]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__IsFix__2D8018E]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__FkDel__728BC511]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__FkNot__5A282C52]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__FkVer__AD4E1D9]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__FkSho__4890EE05]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowControlProcess]'
GO
ALTER TABLE [dbo].[WorkflowControlProcess] DROP CONSTRAINT [DF__WorkflowC__Versi__1C223857]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_Readonly]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_IsMandatory]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_SearchApplicable]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_SelectApplicable]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_IsIdentity]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_IsDmlControl]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowG__Selec__7D707A31]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowG__IsDat__7CA2A6E6]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowG__IsCur__64CE8565]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF__WorkflowG__Depen__7708DE66]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_FkShowActive]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_VersionCheck]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_CreatedDate]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_ModifiedDate]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_NotActive]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_IsDeleted]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_IsCurrentVersion]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsConfig]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsConfig] DROP CONSTRAINT [DF_WorkflowGridControlColumnsConfig_Version]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowGridControlColumnsProcess_Readonly]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowGridControlColumnsProcess_IsMandatory]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowGridControlColumnsProcess_SearchApplicable]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowGridControlColumnsProcess_SelectApplicable]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowGridControlColumnsProcess_IsIdentity]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowGridControlColumnsProcess_IsDmlControl]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowG__Selec__3588A33A]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowG__IsDat__3788BE7]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowG__IsCur__6E4F7E]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF__WorkflowG__Depen__414467C7]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowGridControlColumnsProcess_FkDelete]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowGridControlColumnsProcess_FkNotActive]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowGridControlColumnsProcess_FkVersion]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowGridControlColumnsProcess_FkShowActive]
GO
PRINT N'Dropping constraints from [dbo].[WorkflowGridControlColumnsProcess]'
GO
ALTER TABLE [dbo].[WorkflowGridControlColumnsProcess] DROP CONSTRAINT [DF_WorkflowGridControlColumnsProcess_VersionCheck]
GO
PRINT N'Dropping index [IDX_ChartColumnConfig] from [dbo].[ChartColumnConfig]'
GO
DROP INDEX [IDX_ChartColumnConfig] ON [dbo].[ChartColumnConfig]
GO
PRINT N'Dropping index [IDX_ChartColumnProcess] from [dbo].[ChartColumnProcess]'
GO
DROP INDEX [IDX_ChartColumnProcess] ON [dbo].[ChartColumnProcess]
GO
PRINT N'Dropping index [IDX_ChartDependentColumnConfig] from [dbo].[ChartDependentColumnConfig]'
GO
DROP INDEX [IDX_ChartDependentColumnConfig] ON [dbo].[ChartDependentColumnConfig]
GO
PRINT N'Dropping index [IDX_ChartDependentColumnProcess] from [dbo].[ChartDependentColumnProcess]'
GO
DROP INDEX [IDX_ChartDependentColumnProcess] ON [dbo].[ChartDependentColumnProcess]
GO
PRINT N'Dropping index [IDX_ChartSearchColumnConfig] from [dbo].[ChartSearchColumnConfig]'
GO
DROP INDEX [IDX_ChartSearchColumnConfig] ON [dbo].[ChartSearchColumnConfig]
GO
PRINT N'Dropping index [IDX_ChartSearchColumnProcess] from [dbo].[ChartSearchColumnProcess]'
GO
DROP INDEX [IDX_ChartSearchColumnProcess] ON [dbo].[ChartSearchColumnProcess]
GO
PRINT N'Dropping index [IDX_DashboardConfiguration] from [dbo].[DashboardConfiguration]'
GO
DROP INDEX [IDX_DashboardConfiguration] ON [dbo].[DashboardConfiguration]
GO
PRINT N'Dropping index [IDX_DashboardReportDataSource] from [dbo].[DashboardReportDataSource]'
GO
DROP INDEX [IDX_DashboardReportDataSource] ON [dbo].[DashboardReportDataSource]
GO
PRINT N'Dropping index [IDX_FormAdditionalPropertyConfig] from [dbo].[FormAdditionalPropertyConfig]'
GO
DROP INDEX [IDX_FormAdditionalPropertyConfig] ON [dbo].[FormAdditionalPropertyConfig]
GO
PRINT N'Dropping index [IDX_FormBuildInProcessControls] from [dbo].[FormBuildInProcessControls]'
GO
DROP INDEX [IDX_FormBuildInProcessControls] ON [dbo].[FormBuildInProcessControls]
GO
PRINT N'Dropping index [IDX_FormControlAutoGenerateConfig] from [dbo].[FormControlAutoGenerateConfig]'
GO
DROP INDEX [IDX_FormControlAutoGenerateConfig] ON [dbo].[FormControlAutoGenerateConfig]
GO
PRINT N'Dropping index [IDX_FormControlCodeAutoConfig] from [dbo].[FormControlCodeAutoConfig]'
GO
DROP INDEX [IDX_FormControlCodeAutoConfig] ON [dbo].[FormControlCodeAutoConfig]
GO
PRINT N'Dropping index [IDX_FormControlColumnsConfig] from [dbo].[FormControlColumnsConfig]'
GO
DROP INDEX [IDX_FormControlColumnsConfig] ON [dbo].[FormControlColumnsConfig]
GO
PRINT N'Dropping index [IDX_FormControlColumnsProcess] from [dbo].[FormControlColumnsProcess]'
GO
DROP INDEX [IDX_FormControlColumnsProcess] ON [dbo].[FormControlColumnsProcess]
GO
PRINT N'Dropping index [IDX_FormControlConfig] from [dbo].[FormControlConfig]'
GO
DROP INDEX [IDX_FormControlConfig] ON [dbo].[FormControlConfig]
GO
PRINT N'Dropping index [IDX_FormControlMultilingual] from [dbo].[FormControlMultilingual]'
GO
DROP INDEX [IDX_FormControlMultilingual] ON [dbo].[FormControlMultilingual]
GO
PRINT N'Dropping index [IDX_FormControlPropertyConfig] from [dbo].[FormControlPropertyConfig]'
GO
DROP INDEX [IDX_FormControlPropertyConfig] ON [dbo].[FormControlPropertyConfig]
GO
PRINT N'Dropping index [IDX_FormControlsProcess] from [dbo].[FormControlsProcess]'
GO
DROP INDEX [IDX_FormControlsProcess] ON [dbo].[FormControlsProcess]
GO
PRINT N'Dropping index [IDX_FormEventConfigurationDetails] from [dbo].[FormEventConfigurationDetails]'
GO
DROP INDEX [IDX_FormEventConfigurationDetails] ON [dbo].[FormEventConfigurationDetails]
GO
PRINT N'Dropping index [IDX_FormGridControlColumnsConfig] from [dbo].[FormGridControlColumnsConfig]'
GO
DROP INDEX [IDX_FormGridControlColumnsConfig] ON [dbo].[FormGridControlColumnsConfig]
GO
PRINT N'Dropping index [IDX_FormGridControlColumnsProcess] from [dbo].[FormGridControlColumnsProcess]'
GO
DROP INDEX [IDX_FormGridControlColumnsProcess] ON [dbo].[FormGridControlColumnsProcess]
GO
PRINT N'Dropping index [IDX_FormSearchColumnsConfig] from [dbo].[FormSearchColumnsConfig]'
GO
DROP INDEX [IDX_FormSearchColumnsConfig] ON [dbo].[FormSearchColumnsConfig]
GO
PRINT N'Dropping index [IDX_FormSearchColumnsProcess] from [dbo].[FormSearchColumnsProcess]'
GO
DROP INDEX [IDX_FormSearchColumnsProcess] ON [dbo].[FormSearchColumnsProcess]
GO
PRINT N'Dropping index [IDX_FormSearchControlsConfig] from [dbo].[FormSearchControlsConfig]'
GO
DROP INDEX [IDX_FormSearchControlsConfig] ON [dbo].[FormSearchControlsConfig]
GO
PRINT N'Dropping index [IDX_FormSearchControlsProcess] from [dbo].[FormSearchControlsProcess]'
GO
DROP INDEX [IDX_FormSearchControlsProcess] ON [dbo].[FormSearchControlsProcess]
GO
PRINT N'Dropping index [IDX_FormTableColumnList] from [dbo].[FormTableColumnList]'
GO
DROP INDEX [IDX_FormTableColumnList] ON [dbo].[FormTableColumnList]
GO
PRINT N'Dropping index [IDX_FormTableList] from [dbo].[FormTableList]'
GO
DROP INDEX [IDX_FormTableList] ON [dbo].[FormTableList]
GO
PRINT N'Dropping index [IDX_RepDependentColumnConfig] from [dbo].[RepDependentColumnConfig]'
GO
DROP INDEX [IDX_RepDependentColumnConfig] ON [dbo].[RepDependentColumnConfig]
GO
PRINT N'Dropping index [IDX_RepDependentColumnProcess] from [dbo].[RepDependentColumnProcess]'
GO
DROP INDEX [IDX_RepDependentColumnProcess] ON [dbo].[RepDependentColumnProcess]
GO
PRINT N'Dropping index [IDX_ReportConfiguration] from [dbo].[ReportConfiguration]'
GO
DROP INDEX [IDX_ReportConfiguration] ON [dbo].[ReportConfiguration]
GO
PRINT N'Dropping index [IDX_ReportPivotResultColumnConfig] from [dbo].[ReportPivotResultColumnConfig]'
GO
DROP INDEX [IDX_ReportPivotResultColumnConfig] ON [dbo].[ReportPivotResultColumnConfig]
GO
PRINT N'Dropping index [IDX_ReportPivotSearchColumnConfig] from [dbo].[ReportPivotSearchColumnConfig]'
GO
DROP INDEX [IDX_ReportPivotSearchColumnConfig] ON [dbo].[ReportPivotSearchColumnConfig]
GO
PRINT N'Dropping index [IDX_ReportResultColumnConfig] from [dbo].[ReportResultColumnConfig]'
GO
DROP INDEX [IDX_ReportResultColumnConfig] ON [dbo].[ReportResultColumnConfig]
GO
PRINT N'Dropping index [IDX_ReportResultColumnProcess] from [dbo].[ReportResultColumnProcess]'
GO
DROP INDEX [IDX_ReportResultColumnProcess] ON [dbo].[ReportResultColumnProcess]
GO
PRINT N'Dropping index [IDX_ReportSearchColumnConfig] from [dbo].[ReportSearchColumnConfig]'
GO
DROP INDEX [IDX_ReportSearchColumnConfig] ON [dbo].[ReportSearchColumnConfig]
GO
PRINT N'Dropping index [IDX_ReportSearchColumnProcess] from [dbo].[ReportSearchColumnProcess]'
GO
DROP INDEX [IDX_ReportSearchColumnProcess] ON [dbo].[ReportSearchColumnProcess]
GO
PRINT N'Dropping index [IDX_WorkflowControlColumnsConfig] from [dbo].[WorkflowControlColumnsConfig]'
GO
DROP INDEX [IDX_WorkflowControlColumnsConfig] ON [dbo].[WorkflowControlColumnsConfig]
GO
PRINT N'Dropping index [IDX_WorkflowControlColumnsProcess] from [dbo].[WorkflowControlColumnsProcess]'
GO
DROP INDEX [IDX_WorkflowControlColumnsProcess] ON [dbo].[WorkflowControlColumnsProcess]
GO
PRINT N'Dropping index [IDX_WorkflowControlConfig] from [dbo].[WorkflowControlConfig]'
GO
DROP INDEX [IDX_WorkflowControlConfig] ON [dbo].[WorkflowControlConfig]
GO
PRINT N'Dropping index [IDX_WorkflowControlProcess] from [dbo].[WorkflowControlProcess]'
GO
DROP INDEX [IDX_WorkflowControlProcess] ON [dbo].[WorkflowControlProcess]
GO
PRINT N'Dropping index [IDX_WorkflowGridControlColumnsConfig] from [dbo].[WorkflowGridControlColumnsConfig]'
GO
DROP INDEX [IDX_WorkflowGridControlColumnsConfig] ON [dbo].[WorkflowGridControlColumnsConfig]
GO
PRINT N'Dropping index [IDX_WorkflowGridControlColumnsProcess] from [dbo].[WorkflowGridControlColumnsProcess]'
GO
DROP INDEX [IDX_WorkflowGridControlColumnsProcess] ON [dbo].[WorkflowGridControlColumnsProcess]
GO
PRINT N'Dropping trigger [dbo].[trgDashboardDelete] from [dbo].[DashboardConfiguration]'
GO
DROP TRIGGER [dbo].[trgDashboardDelete]
GO
PRINT N'Dropping trigger [dbo].[trgReportDelete] from [dbo].[ReportConfiguration]'
GO
DROP TRIGGER [dbo].[trgReportDelete]
GO
PRINT N'Dropping trigger [dbo].[trgReportUpdate] from [dbo].[ReportConfiguration]'
GO
DROP TRIGGER [dbo].[trgReportUpdate]
GO
PRINT N'Dropping [dbo].[spWorkflowProcessConfigUpdate]'
GO
DROP PROCEDURE [dbo].[spWorkflowProcessConfigUpdate]
GO
PRINT N'Dropping [dbo].[spWorkflowGetProcessConfig]'
GO
DROP PROCEDURE [dbo].[spWorkflowGetProcessConfig]
GO
PRINT N'Dropping [dbo].[spReportDBConfiguration]'
GO
DROP PROCEDURE [dbo].[spReportDBConfiguration]
GO
PRINT N'Dropping [dbo].[spReportDBConfigValidationUpdated]'
GO
DROP PROCEDURE [dbo].[spReportDBConfigValidationUpdated]
GO
PRINT N'Dropping [dbo].[spBIGetReportData]'
GO
DROP PROCEDURE [dbo].[spBIGetReportData]
GO
PRINT N'Dropping [dbo].[spBIGetReportDataSources]'
GO
DROP PROCEDURE [dbo].[spBIGetReportDataSources]
GO
PRINT N'Dropping [dbo].[spBIGetReportColumnList]'
GO
DROP PROCEDURE [dbo].[spBIGetReportColumnList]
GO
PRINT N'Dropping [dbo].[spBIGetPivotReportData]'
GO
DROP PROCEDURE [dbo].[spBIGetPivotReportData]
GO
PRINT N'Dropping [dbo].[spBIGetFKDetails]'
GO
DROP PROCEDURE [dbo].[spBIGetFKDetails]
GO
PRINT N'Dropping [dbo].[spBIGetDatasource]'
GO
DROP PROCEDURE [dbo].[spBIGetDatasource]
GO
PRINT N'Dropping [dbo].[spBIDashboardGetData]'
GO
DROP PROCEDURE [dbo].[spBIDashboardGetData]
GO
PRINT N'Dropping [dbo].[viewGetDBTableColumns]'
GO
DROP VIEW [dbo].[viewGetDBTableColumns]
GO
PRINT N'Dropping [dbo].[viewGetDBStoredProcedures]'
GO
DROP VIEW [dbo].[viewGetDBStoredProcedures]
GO
PRINT N'Dropping [dbo].[viewFormBuildInProcessConfig]'
GO
DROP VIEW [dbo].[viewFormBuildInProcessConfig]
GO
PRINT N'Dropping [dbo].[viewReportDataSources]'
GO
DROP VIEW [dbo].[viewReportDataSources]
GO
PRINT N'Dropping [dbo].[viewGetDBTables]'
GO
DROP VIEW [dbo].[viewGetDBTables]
GO
PRINT N'Dropping [dbo].[viewGetDBViews]'
GO
DROP VIEW [dbo].[viewGetDBViews]
GO
PRINT N'Dropping [dbo].[spWorkflowTransferControls]'
GO
DROP PROCEDURE [dbo].[spWorkflowTransferControls]
GO
PRINT N'Dropping [dbo].[spWorkflowSaveControlConfiguration]'
GO
DROP PROCEDURE [dbo].[spWorkflowSaveControlConfiguration]
GO
PRINT N'Dropping [dbo].[spWorkflowProcessDefaultControls]'
GO
DROP PROCEDURE [dbo].[spWorkflowProcessDefaultControls]
GO
PRINT N'Dropping [dbo].[spWorkflowGetListDetails]'
GO
DROP PROCEDURE [dbo].[spWorkflowGetListDetails]
GO
PRINT N'Dropping [dbo].[spWorkflowGetControlList]'
GO
DROP PROCEDURE [dbo].[spWorkflowGetControlList]
GO
PRINT N'Dropping [dbo].[spWorkflowControlProcessEntry]'
GO
DROP PROCEDURE [dbo].[spWorkflowControlProcessEntry]
GO
PRINT N'Dropping [dbo].[spWorkflowClearControlProcess]'
GO
DROP PROCEDURE [dbo].[spWorkflowClearControlProcess]
GO
PRINT N'Dropping [dbo].[spValidateFormConfig]'
GO
DROP PROCEDURE [dbo].[spValidateFormConfig]
GO
PRINT N'Dropping [dbo].[spSaveTabConfigData]'
GO
DROP PROCEDURE [dbo].[spSaveTabConfigData]
GO
PRINT N'Dropping [dbo].[spSaveSwitchFormType]'
GO
DROP PROCEDURE [dbo].[spSaveSwitchFormType]
GO
PRINT N'Dropping [dbo].[spSaveRoleConfigData]'
GO
DROP PROCEDURE [dbo].[spSaveRoleConfigData]
GO
PRINT N'Dropping [dbo].[spSaveRearrangementData]'
GO
DROP PROCEDURE [dbo].[spSaveRearrangementData]
GO
PRINT N'Dropping [dbo].[spSaveGroupboxConfigData]'
GO
DROP PROCEDURE [dbo].[spSaveGroupboxConfigData]
GO
PRINT N'Dropping [dbo].[spSaveFormControlProperty]'
GO
DROP PROCEDURE [dbo].[spSaveFormControlProperty]
GO
PRINT N'Dropping [dbo].[spSaveFormConfigData]'
GO
DROP PROCEDURE [dbo].[spSaveFormConfigData]
GO
PRINT N'Dropping [dbo].[spSaveFormColumnProperty]'
GO
DROP PROCEDURE [dbo].[spSaveFormColumnProperty]
GO
PRINT N'Dropping [dbo].[spSaveFormAdditionalProperty]'
GO
DROP PROCEDURE [dbo].[spSaveFormAdditionalProperty]
GO
PRINT N'Dropping [dbo].[spSaveDefaultControl]'
GO
DROP PROCEDURE [dbo].[spSaveDefaultControl]
GO
PRINT N'Dropping [dbo].[spSaveButtonConfigData]'
GO
DROP PROCEDURE [dbo].[spSaveButtonConfigData]
GO
PRINT N'Dropping [dbo].[spPublishForm]'
GO
DROP PROCEDURE [dbo].[spPublishForm]
GO
PRINT N'Dropping [dbo].[spFromSaveControlConfiguration]'
GO
DROP PROCEDURE [dbo].[spFromSaveControlConfiguration]
GO
PRINT N'Dropping [dbo].[spFormTransferControlsFromBase]'
GO
DROP PROCEDURE [dbo].[spFormTransferControlsFromBase]
GO
PRINT N'Dropping [dbo].[spFormTableStructureChange]'
GO
DROP PROCEDURE [dbo].[spFormTableStructureChange]
GO
PRINT N'Dropping [dbo].[spFormTableColumnPreparation]'
GO
DROP PROCEDURE [dbo].[spFormTableColumnPreparation]
GO
PRINT N'Dropping [dbo].[spFormSaveLaunguageConfig]'
GO
DROP PROCEDURE [dbo].[spFormSaveLaunguageConfig]
GO
PRINT N'Dropping [dbo].[spFormSaveDefaultProperties]'
GO
DROP PROCEDURE [dbo].[spFormSaveDefaultProperties]
GO
PRINT N'Dropping [dbo].[spFormGetSwitchFormData]'
GO
DROP PROCEDURE [dbo].[spFormGetSwitchFormData]
GO
PRINT N'Dropping [dbo].[spFormGetRearrangementList]'
GO
DROP PROCEDURE [dbo].[spFormGetRearrangementList]
GO
PRINT N'Dropping [dbo].[spFormGetRearrangementData]'
GO
DROP PROCEDURE [dbo].[spFormGetRearrangementData]
GO
PRINT N'Dropping [dbo].[spFormGetListDetails]'
GO
DROP PROCEDURE [dbo].[spFormGetListDetails]
GO
PRINT N'Dropping [dbo].[spFormGetDependentData]'
GO
DROP PROCEDURE [dbo].[spFormGetDependentData]
GO
PRINT N'Dropping [dbo].[spFormGetControlList]'
GO
DROP PROCEDURE [dbo].[spFormGetControlList]
GO
PRINT N'Dropping [dbo].[spFormDropTableColumn]'
GO
DROP PROCEDURE [dbo].[spFormDropTableColumn]
GO
PRINT N'Dropping [dbo].[spFormDeleteProperty]'
GO
DROP PROCEDURE [dbo].[spFormDeleteProperty]
GO
PRINT N'Dropping [dbo].[spFormControlProcessEntry]'
GO
DROP PROCEDURE [dbo].[spFormControlProcessEntry]
GO
PRINT N'Dropping [dbo].[spFormConfigDataSources]'
GO
DROP PROCEDURE [dbo].[spFormConfigDataSources]
GO
PRINT N'Dropping [dbo].[spFormClearControlProcess]'
GO
DROP PROCEDURE [dbo].[spFormClearControlProcess]
GO
PRINT N'Dropping [dbo].[spFormAdditionalProperties]'
GO
DROP PROCEDURE [dbo].[spFormAdditionalProperties]
GO
PRINT N'Dropping [dbo].[spCreateTablesForFormConfig]'
GO
DROP PROCEDURE [dbo].[spCreateTablesForFormConfig]
GO
PRINT N'Dropping [dbo].[spCmnFormUpdatePostSave]'
GO
DROP PROCEDURE [dbo].[spCmnFormUpdatePostSave]
GO
PRINT N'Dropping [dbo].[spDashboardValidate]'
GO
DROP PROCEDURE [dbo].[spDashboardValidate]
GO
PRINT N'Dropping [dbo].[spDashboardReportData]'
GO
DROP PROCEDURE [dbo].[spDashboardReportData]
GO
PRINT N'Dropping [dbo].[spDashboardPublish]'
GO
DROP PROCEDURE [dbo].[spDashboardPublish]
GO
PRINT N'Dropping [dbo].[spDashboardGetData]'
GO
DROP PROCEDURE [dbo].[spDashboardGetData]
GO
PRINT N'Dropping [dbo].[spDashboardDependentData]'
GO
DROP PROCEDURE [dbo].[spDashboardDependentData]
GO
PRINT N'Dropping [dbo].[spDashboardConfigUpdate]'
GO
DROP PROCEDURE [dbo].[spDashboardConfigUpdate]
GO
PRINT N'Dropping [dbo].[spChartSaveConfiguration]'
GO
DROP PROCEDURE [dbo].[spChartSaveConfiguration]
GO
PRINT N'Dropping [dbo].[spChartFilterProcessEntry]'
GO
DROP PROCEDURE [dbo].[spChartFilterProcessEntry]
GO
PRINT N'Dropping [dbo].[spChartColumnProcessEntry]'
GO
DROP PROCEDURE [dbo].[spChartColumnProcessEntry]
GO
PRINT N'Dropping [dbo].[spChartColumnList]'
GO
DROP PROCEDURE [dbo].[spChartColumnList]
GO
PRINT N'Dropping [dbo].[spChartClearConfigurationProcess]'
GO
DROP PROCEDURE [dbo].[spChartClearConfigurationProcess]
GO
PRINT N'Dropping [dbo].[spSavePivotColumnOrder]'
GO
DROP PROCEDURE [dbo].[spSavePivotColumnOrder]
GO
PRINT N'Dropping [dbo].[spSavePivotColumnName]'
GO
DROP PROCEDURE [dbo].[spSavePivotColumnName]
GO
PRINT N'Dropping [dbo].[spReportValidate]'
GO
DROP PROCEDURE [dbo].[spReportValidate]
GO
PRINT N'Dropping [dbo].[spReportSaveConfiguration]'
GO
DROP PROCEDURE [dbo].[spReportSaveConfiguration]
GO
PRINT N'Dropping [dbo].[spReportRemovePivotColumn]'
GO
DROP PROCEDURE [dbo].[spReportRemovePivotColumn]
GO
PRINT N'Dropping [dbo].[spReportPublish]'
GO
DROP PROCEDURE [dbo].[spReportPublish]
GO
PRINT N'Dropping [dbo].[spReportPivotFilterEntry]'
GO
DROP PROCEDURE [dbo].[spReportPivotFilterEntry]
GO
PRINT N'Dropping [dbo].[spReportPivotColumnEntry]'
GO
DROP PROCEDURE [dbo].[spReportPivotColumnEntry]
GO
PRINT N'Dropping [dbo].[spReportGetPivotReportData]'
GO
DROP PROCEDURE [dbo].[spReportGetPivotReportData]
GO
PRINT N'Dropping [dbo].[spReportGetPivotColumnList]'
GO
DROP PROCEDURE [dbo].[spReportGetPivotColumnList]
GO
PRINT N'Dropping [dbo].[spReportGetDataSources]'
GO
DROP PROCEDURE [dbo].[spReportGetDataSources]
GO
PRINT N'Dropping [dbo].[spReportGetData]'
GO
DROP PROCEDURE [dbo].[spReportGetData]
GO
PRINT N'Dropping [dbo].[spReportGenerateForm]'
GO
DROP PROCEDURE [dbo].[spReportGenerateForm]
GO
PRINT N'Dropping [dbo].[spReportFilterProcessEntry]'
GO
DROP PROCEDURE [dbo].[spReportFilterProcessEntry]
GO
PRINT N'Dropping [dbo].[spReportDependentData]'
GO
DROP PROCEDURE [dbo].[spReportDependentData]
GO
PRINT N'Dropping [dbo].[spReportConfigStatusUpdate]'
GO
DROP PROCEDURE [dbo].[spReportConfigStatusUpdate]
GO
PRINT N'Dropping [dbo].[spReportColumnProcessEntry]'
GO
DROP PROCEDURE [dbo].[spReportColumnProcessEntry]
GO
PRINT N'Dropping [dbo].[spReportColumnList]'
GO
DROP PROCEDURE [dbo].[spReportColumnList]
GO
PRINT N'Dropping [dbo].[spReportClearConfigurationProcess]'
GO
DROP PROCEDURE [dbo].[spReportClearConfigurationProcess]
GO
PRINT N'Dropping [dbo].[WorkflowGridControlColumnsProcess]'
GO
DROP TABLE [dbo].[WorkflowGridControlColumnsProcess]
GO
PRINT N'Dropping [dbo].[WorkflowGridControlColumnsConfig]'
GO
DROP TABLE [dbo].[WorkflowGridControlColumnsConfig]
GO
PRINT N'Dropping [dbo].[WorkflowControlProcess]'
GO
DROP TABLE [dbo].[WorkflowControlProcess]
GO
PRINT N'Dropping [dbo].[WorkflowControlConfig]'
GO
DROP TABLE [dbo].[WorkflowControlConfig]
GO
PRINT N'Dropping [dbo].[WorkflowControlColumnsProcess]'
GO
DROP TABLE [dbo].[WorkflowControlColumnsProcess]
GO
PRINT N'Dropping [dbo].[WorkflowControlColumnsConfig]'
GO
DROP TABLE [dbo].[WorkflowControlColumnsConfig]
GO
PRINT N'Dropping [dbo].[FormTableColumnList]'
GO
DROP TABLE [dbo].[FormTableColumnList]
GO
PRINT N'Dropping [dbo].[FormGroupboxConfig]'
GO
DROP TABLE [dbo].[FormGroupboxConfig]
GO
PRINT N'Dropping [dbo].[FormControlCodeAutoConfig]'
GO
DROP TABLE [dbo].[FormControlCodeAutoConfig]
GO
PRINT N'Dropping [dbo].[FormTableList]'
GO
DROP TABLE [dbo].[FormTableList]
GO
PRINT N'Dropping [dbo].[FormTabConfig]'
GO
DROP TABLE [dbo].[FormTabConfig]
GO
PRINT N'Dropping [dbo].[FormRoleConfiguration]'
GO
DROP TABLE [dbo].[FormRoleConfiguration]
GO
PRINT N'Dropping [dbo].[FormControlPropertyConfig]'
GO
DROP TABLE [dbo].[FormControlPropertyConfig]
GO
PRINT N'Dropping [dbo].[FormControlMultilingual]'
GO
DROP TABLE [dbo].[FormControlMultilingual]
GO
PRINT N'Dropping [dbo].[FormControlAutoGenerateConfig]'
GO
DROP TABLE [dbo].[FormControlAutoGenerateConfig]
GO
PRINT N'Dropping [dbo].[FormButtonConfig]'
GO
DROP TABLE [dbo].[FormButtonConfig]
GO
PRINT N'Dropping [dbo].[FormBuildInProcessControls]'
GO
DROP TABLE [dbo].[FormBuildInProcessControls]
GO
PRINT N'Dropping [dbo].[FormAdditionalPropertyConfig]'
GO
DROP TABLE [dbo].[FormAdditionalPropertyConfig]
GO
PRINT N'Dropping [dbo].[FormSearchControlsProcess]'
GO
DROP TABLE [dbo].[FormSearchControlsProcess]
GO
PRINT N'Dropping [dbo].[FormSearchControlsConfig]'
GO
DROP TABLE [dbo].[FormSearchControlsConfig]
GO
PRINT N'Dropping [dbo].[FormSearchColumnsProcess]'
GO
DROP TABLE [dbo].[FormSearchColumnsProcess]
GO
PRINT N'Dropping [dbo].[FormSearchColumnsConfig]'
GO
DROP TABLE [dbo].[FormSearchColumnsConfig]
GO
PRINT N'Dropping [dbo].[FormGridControlColumnsProcess]'
GO
DROP TABLE [dbo].[FormGridControlColumnsProcess]
GO
PRINT N'Dropping [dbo].[FormGridControlColumnsConfig]'
GO
DROP TABLE [dbo].[FormGridControlColumnsConfig]
GO
PRINT N'Dropping [dbo].[FormEventConfigurationDetails]'
GO
DROP TABLE [dbo].[FormEventConfigurationDetails]
GO
PRINT N'Dropping [dbo].[FormControlsProcess]'
GO
DROP TABLE [dbo].[FormControlsProcess]
GO
PRINT N'Dropping [dbo].[FormControlConfig]'
GO
DROP TABLE [dbo].[FormControlConfig]
GO
PRINT N'Dropping [dbo].[FormControlColumnsProcess]'
GO
DROP TABLE [dbo].[FormControlColumnsProcess]
GO
PRINT N'Dropping [dbo].[FormControlColumnsConfig]'
GO
DROP TABLE [dbo].[FormControlColumnsConfig]
GO
PRINT N'Dropping [dbo].[FormConfiguration]'
GO
DROP TABLE [dbo].[FormConfiguration]
GO
PRINT N'Dropping [dbo].[FormBuildInProcessConfig]'
GO
DROP TABLE [dbo].[FormBuildInProcessConfig]
GO
PRINT N'Dropping [dbo].[DashboardReportDataSource]'
GO
DROP TABLE [dbo].[DashboardReportDataSource]
GO
PRINT N'Dropping [dbo].[ChartSearchColumnProcess]'
GO
DROP TABLE [dbo].[ChartSearchColumnProcess]
GO
PRINT N'Dropping [dbo].[ChartSearchColumnConfig]'
GO
DROP TABLE [dbo].[ChartSearchColumnConfig]
GO
PRINT N'Dropping [dbo].[ChartDependentColumnProcess]'
GO
DROP TABLE [dbo].[ChartDependentColumnProcess]
GO
PRINT N'Dropping [dbo].[ChartDependentColumnConfig]'
GO
DROP TABLE [dbo].[ChartDependentColumnConfig]
GO
PRINT N'Dropping [dbo].[ChartColumnProcess]'
GO
DROP TABLE [dbo].[ChartColumnProcess]
GO
PRINT N'Dropping [dbo].[ChartColumnConfig]'
GO
DROP TABLE [dbo].[ChartColumnConfig]
GO
PRINT N'Dropping [dbo].[DashboardConfiguration]'
GO
DROP TABLE [dbo].[DashboardConfiguration]
GO
PRINT N'Dropping [dbo].[ReportSearchColumnProcess]'
GO
DROP TABLE [dbo].[ReportSearchColumnProcess]
GO
PRINT N'Dropping [dbo].[ReportSearchColumnConfig]'
GO
DROP TABLE [dbo].[ReportSearchColumnConfig]
GO
PRINT N'Dropping [dbo].[ReportResultColumnProcess]'
GO
DROP TABLE [dbo].[ReportResultColumnProcess]
GO
PRINT N'Dropping [dbo].[ReportResultColumnConfig]'
GO
DROP TABLE [dbo].[ReportResultColumnConfig]
GO
PRINT N'Dropping [dbo].[ReportPivotSearchColumnConfig]'
GO
DROP TABLE [dbo].[ReportPivotSearchColumnConfig]
GO
PRINT N'Dropping [dbo].[ReportPivotResultColumnConfig]'
GO
DROP TABLE [dbo].[ReportPivotResultColumnConfig]
GO
PRINT N'Dropping [dbo].[RepDependentColumnProcess]'
GO
DROP TABLE [dbo].[RepDependentColumnProcess]
GO
PRINT N'Dropping [dbo].[RepDependentColumnConfig]'
GO
DROP TABLE [dbo].[RepDependentColumnConfig]
GO
PRINT N'Dropping [dbo].[ReportConfiguration]'
GO
DROP TABLE [dbo].[ReportConfiguration]
GO

