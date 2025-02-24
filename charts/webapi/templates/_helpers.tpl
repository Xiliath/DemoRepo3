{/*
Expand the name of the chart.
*/}
{- define "demoapp3-webapi.name" -}
{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}
{- end -}

{/*
Create a fully qualified app name.
*/}
{- define "demoapp3-webapi.fullname" -}
{- if .Values.fullnameOverride }
{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}
{- else }
{- include "demoapp3-webapi.name" . }-{ .Release.Name | trunc 63 | trimSuffix "-" }
{- end -}
{- end -}
