{-
   Kubernetes

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.1
   Kubernetes API version: release-1.24
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Kubernetes.OpenAPI.LoggingMonadLogger
monad-logger Logging functions
-}

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Kubernetes.OpenAPI.LoggingMonadLogger where

import qualified Control.Exception.Safe as E
import qualified Control.Monad.IO.Class as P
import qualified Data.Text as T
import qualified Data.Time as TI

import Data.Text (Text)

import qualified Control.Monad.Logger as LG

-- * Type Aliases (for compatibility)

-- | Runs a monad-logger  block with the filter predicate
type LogExecWithContext = forall m a. P.MonadIO m =>
                                      LogContext -> LogExec m a

-- | A monad-logger block
type LogExec m a = LG.LoggingT m a -> m a

-- | A monad-logger filter predicate
type LogContext = LG.LogSource -> LG.LogLevel -> Bool

-- | A monad-logger log level
type LogLevel = LG.LogLevel

-- * default logger

-- | the default log environment
initLogContext :: IO LogContext
initLogContext = pure infoLevelFilter

-- | Runs a monad-logger block with the filter predicate
runDefaultLogExecWithContext :: LogExecWithContext
runDefaultLogExecWithContext = runNullLogExec

-- * stdout logger

-- | Runs a monad-logger block targeting stdout, with the filter predicate
stdoutLoggingExec :: LogExecWithContext
stdoutLoggingExec cxt = LG.runStdoutLoggingT . LG.filterLogger cxt

-- | @pure@
stdoutLoggingContext :: LogContext -> IO LogContext
stdoutLoggingContext = pure

-- * stderr logger

-- | Runs a monad-logger block targeting stderr, with the filter predicate
stderrLoggingExec :: LogExecWithContext
stderrLoggingExec cxt = LG.runStderrLoggingT . LG.filterLogger cxt

-- | @pure@
stderrLoggingContext :: LogContext -> IO LogContext
stderrLoggingContext = pure

-- * Null logger

-- | Disables monad-logger logging
runNullLogExec :: LogExecWithContext
runNullLogExec = const (`LG.runLoggingT` nullLogger)

-- | monad-logger which does nothing
nullLogger :: LG.Loc -> LG.LogSource -> LG.LogLevel -> LG.LogStr -> IO ()
nullLogger _ _ _ _ = return ()

-- * Log Msg

-- | Log a message using the current time
_log :: (P.MonadIO m, LG.MonadLogger m) => Text -> LG.LogLevel -> Text -> m ()
_log src level msg = do
  now <- P.liftIO (formatTimeLog <$> TI.getCurrentTime)
  LG.logOtherNS ("Kubernetes.OpenAPI." <> src) level ("[" <> now <> "] " <> msg)
 where
  formatTimeLog =
    T.pack . TI.formatTime TI.defaultTimeLocale "%Y-%m-%dT%H:%M:%S%Z"

-- * Log Exceptions

-- | re-throws exceptions after logging them
logExceptions
   :: (LG.MonadLogger m, E.MonadCatch m, P.MonadIO m)
   => Text -> m a -> m a
logExceptions src =
   E.handle
     (\(e :: E.SomeException) -> do
        _log src LG.LevelError ((T.pack . show) e)
        E.throw e)

-- * Log Level

levelInfo :: LogLevel
levelInfo = LG.LevelInfo

levelError :: LogLevel
levelError = LG.LevelError

levelDebug :: LogLevel
levelDebug = LG.LevelDebug

-- * Level Filter

minLevelFilter :: LG.LogLevel -> LG.LogSource -> LG.LogLevel -> Bool
minLevelFilter l _ l' = l' >= l

infoLevelFilter :: LG.LogSource -> LG.LogLevel -> Bool
infoLevelFilter = minLevelFilter LG.LevelInfo
