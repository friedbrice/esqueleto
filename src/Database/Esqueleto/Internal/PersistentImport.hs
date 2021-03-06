-- | Re-export "Database.Persist.Sql" without any clashes with
-- @esqueleto@.
module Database.Esqueleto.Internal.PersistentImport
-- NOTE: switch back to a module export once https://gitlab.haskell.org/ghc/ghc/merge_requests/276
-- has been merged. See https://github.com/bitemyapp/esqueleto/issues/110 for more details
    ( toJsonText,
    entityIdFromJSON,
    entityIdToJSON,
    entityValues,
    fromPersistValueJSON,
    keyValueEntityFromJSON,
    keyValueEntityToJSON,
    toPersistValueJSON,
    selectKeys,
    belongsTo,
    belongsToJust,
    getEntity,
    getJust,
    getJustEntity,
    insertEntity,
    insertRecord,
    liftPersist,
    checkUnique,
    getByValue,
    insertBy,
    insertUniqueEntity,
    onlyUnique,
    replaceUnique,
    transactionSave,
    transactionUndo,
    defaultAttribute,
    mkColumns,
    getMigration,
    migrate,
    parseMigration,
    parseMigration',
    printMigration,
    runMigration,
    runMigrationSilent,
    runMigrationUnsafe,
    showMigration,
    decorateSQLWithLimitOffset,
    fieldDBName,
    fromSqlKey,
    getFieldName,
    getTableName,
    tableDBName,
    toSqlKey,
    withRawQuery,
    getStmtConn,
    rawExecute,
    rawExecuteCount,
    rawQuery,
    rawQueryRes,
    rawSql,
    askLogFunc,
    close',
    createSqlPool,
    liftSqlPersistMPool,
    runSqlConn,
    runSqlPersistM,
    runSqlPersistMPool,
    runSqlPool,
    withSqlConn,
    withSqlPool,
    readToUnknown,
    readToWrite,
    writeToUnknown,
    entityKeyFields,
    entityPrimary,
    fromPersistValueText,
    keyAndEntityFields,
    toEmbedEntityDef,
    PersistStore,
    PersistUnique,
    DeleteCascade(..),
    PersistConfig(..),
    BackendSpecificUpdate,
    Entity(..),
    PersistEntity(..),
    PersistField(..),
    SomePersistField(..),
    PersistQueryRead(..),
    PersistQueryWrite(..),
    BackendCompatible(..),
    BackendKey(..),
    HasPersistBackend(..),
    IsPersistBackend,
    PersistCore(..),
    PersistRecordBackend,
    PersistStoreRead(..),
    PersistStoreWrite(..),
    ToBackendKey(..),
    PersistUniqueRead(..),
    PersistUniqueWrite(..),
    PersistFieldSql(..),
    RawSql(..),
    CautiousMigration,
    Column(..),
    ConnectionPool,
    Migration,
    PersistentSqlException(..),
    Single(..),
    Sql,
    SqlPersistM,
    SqlPersistT,
    InsertSqlResult(..),
    IsSqlBackend,
    LogFunc,
    SqlBackend(..),
    SqlBackendCanRead,
    SqlBackendCanWrite,
    SqlReadBackend(..),
    SqlReadT,
    SqlWriteBackend(..),
    SqlWriteT,
    Statement(..),
    Attr,
    Checkmark(..),
    CompositeDef(..),
    ConstraintNameDB(..),
    EntityNameDB(..),
    FieldNameDB(..),
    EmbedEntityDef(..),
    EmbedFieldDef(..),
    EntityDef(..),
    ExtraLine,
    FieldDef(..),
    FieldType(..),
    ForeignDef(..),
    ForeignFieldDef,
    ConstraintNameHS(..),
    EntityNameHS(..),
    FieldNameHS(..),
    IsNullable(..),
    OnlyUniqueException(..),
    PersistException(..),
    PersistFilter(..),
    PersistUpdate(..),
    PersistValue(..),
    ReferenceDef(..),
    SqlType(..),
    UniqueDef(..),
    UpdateException(..),
    WhyNullable(..)
    ) where

import Database.Persist.Sql hiding
       ( BackendSpecificFilter
       , Filter(..)
       , PersistQuery
       , SelectOpt(..)
       , Update(..)
       , count
       , delete
       , deleteCascadeWhere
       , deleteWhereCount
       , getPersistMap
       , limitOffsetOrder
       , listToJSON
       , mapToJSON
       , selectKeysList
       , selectList
       , selectSource
       , update
       , updateWhereCount
       , (!=.)
       , (*=.)
       , (+=.)
       , (-=.)
       , (/<-.)
       , (/=.)
       , (<-.)
       , (<.)
       , (<=.)
       , (=.)
       , (==.)
       , (>.)
       , (>=.)
       , (||.)
       , exists
       )

import Control.Monad.Logger (MonadLogger, MonadLoggerIO, askLoggerIO)
import Control.Monad.Trans.Resource (MonadUnliftIO)

askLogFunc :: (MonadUnliftIO m, MonadLogger m, MonadLoggerIO m) => m LogFunc
askLogFunc = askLoggerIO
