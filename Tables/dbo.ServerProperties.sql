CREATE TABLE [dbo].[ServerProperties]
(
[ID] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[server_name] [sys].[sysname] NOT NULL,
[BackupDirectory] [sql_variant] NULL,
[BuildClrVersion] [sql_variant] NULL,
[Collation] [sql_variant] NULL,
[CollationID] [sql_variant] NULL,
[ComparisonStyle] [sql_variant] NULL,
[ComputerNamePhysicalNetBIOS] [sql_variant] NULL,
[Edition] [sql_variant] NULL,
[EditionID] [sql_variant] NULL,
[EngineEdition] [sql_variant] NULL,
[FilestreamConfiguredLevel] [sql_variant] NULL,
[FilestreamEffectiveLevel] [sql_variant] NULL,
[FilestreamShareName] [sql_variant] NULL,
[HadrManagerStatus] [sql_variant] NULL,
[InstanceDefaultDataPath] [sql_variant] NULL,
[InstanceDefaultLogPath] [sql_variant] NULL,
[InstanceName] [sql_variant] NULL,
[IsClustered] [sql_variant] NULL,
[IsFullTextInstalled] [sql_variant] NULL,
[IsHadrEnabled] [sql_variant] NULL,
[IsIntegratedSecurityOnly] [sql_variant] NULL,
[IsLocalDB] [sql_variant] NULL,
[IsSingleUser] [sql_variant] NULL,
[IsXTPSupported] [sql_variant] NULL,
[LCID] [sql_variant] NULL,
[LicenseType] [sql_variant] NULL,
[MachineName] [sql_variant] NULL,
[NumLicenses] [sql_variant] NULL,
[ProcessID] [sql_variant] NULL,
[ProductLevel] [sql_variant] NULL,
[ProductVersion] [sql_variant] NULL,
[ResourceLastUpdateDateTime] [sql_variant] NULL,
[ResourceVersion] [sql_variant] NULL,
[ServerName] [sql_variant] NULL,
[SqlCharSet] [sql_variant] NULL,
[SqlCharSetName] [sql_variant] NULL,
[SqlSortOrder] [sql_variant] NULL,
[SqlSortOrderName] [sql_variant] NULL,
[DataCollectionTime] [datetime] NULL,
[RowCheckSum] AS (checksum([server_name],[BackupDirectory],[BuildClrVersion],[Collation],[CollationID],[ComparisonStyle],[ComputerNamePhysicalNetBIOS],[Edition],[EditionID],[EngineEdition],[FilestreamConfiguredLevel],[FilestreamEffectiveLevel],[FilestreamShareName],[HadrManagerStatus],[InstanceDefaultDataPath],[InstanceDefaultLogPath],[InstanceName],[IsClustered],[IsFullTextInstalled],[IsHadrEnabled],[IsIntegratedSecurityOnly],[IsLocalDB],[IsSingleUser],[IsXTPSupported],[LCID],[LicenseType],[MachineName],[NumLicenses],[ProcessID],[ProductLevel],[ProductVersion],[ResourceLastUpdateDateTime],[ServerName],[ResourceVersion],[SqlCharSet],[SqlCharSetName],[SqlSortOrder],[SqlSortOrderName]))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ServerProperties] ADD CONSTRAINT [PK_ServerProperties] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO