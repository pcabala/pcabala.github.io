# Scaffold-Attractors.ps1
# EN-only scaffolding of attractor pages from default_attractors.json
# - Safe by default (WhatIf / ShouldProcess)
# - Does NOT overwrite existing files unless -Overwrite is set
# - Generates: en/systems/<slug>/index.md with a filled template

[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [string]$JsonPath = ".\default_attractors.json",
    [string]$OutRoot  = ".",
    [switch]$Overwrite,
    [string[]]$Only   # optional: limit to selected names, e.g. -Only "Lorenz","Rossler"
)

function Get-Slug([string]$name) {
    # Remove diacritics, lowercase, ASCII slug
    $normalized = $name.Normalize([Text.NormalizationForm]::FormD)
    $sb = New-Object System.Text.StringBuilder
    foreach ($ch in $normalized.ToCharArray()) {
        if ([Globalization.CharUnicodeInfo]::GetUnicodeCategory($ch) -ne `
            [Globalization.UnicodeCategory]::NonSpacingMark) {
            [void]$sb.Append($ch)
        }
    }
    $str = $sb.ToString().Normalize([Text.NormalizationForm]::FormC)
    $str = $str.ToLowerInvariant()
    $str = $str -replace "[^a-z0-9]+","-"
    $str = $str.Trim("-")
    return $str
}

function Format-TeX([string]$expr) {
    if (-not $expr) { return "" }
    $expr = $expr -replace "\*\*","^"
    $expr = $expr -replace "\*","\\,"
    return $expr
}

# --- Load JSON ---
if (-not (Test-Path $JsonPath)) {
    throw "JSON not found: $JsonPath"
}
$json = Get-Content -Raw -Path $JsonPath | ConvertFrom-Json
if (-not $json.items) {
    throw "JSON must contain 'items' object with attractors."
}

# --- Iterate items (order preserved by properties enumeration) ---
$created = @()
$skipped = @()

foreach ($prop in $json.items.PSObject.Properties) {
    $name = [string]$prop.Name
    if ($Only -and ($Only -notcontains $name)) { continue }

    $a = $prop.Value
    $slug = Get-Slug $name

    $dx = Format-TeX $a.rhs.dx
    $dy = Format-TeX $a.rhs.dy
    $dz = Format-TeX $a.rhs.dz

    # parameters list (markdown bullets)
    $paramLines = @()
    if ($a.params) {
        foreach ($p in $a.params.PSObject.Properties) {
            $paramLines += ("- \(${0}\) = {1}" -f $p.Name, $p.Value)
        }
    }
    $paramBlock = if ($paramLines) { $paramLines -join "`r`n" } else { "- (to be filled)" }

    # integration defaults (safe access)
    $proc    = $a.defaults.procedure
    $dt      = $a.defaults.dt
    $steps   = $a.defaults.steps
    $burnin  = $a.defaults.burn_in
    $tol     = $a.defaults.tolerance
    $min_dt  = $a.defaults.min_dt
    $max_dt  = $a.defaults.max_dt

    $summary = $a.summary
    $source  = $a.source

    # Paths
    $dirEn = Join-Path $OutRoot ("en\systems\{0}" -f $slug)
    $fileEn = Join-Path $dirEn "index.md"

    # Front matter + content (EN)
    $titleEn = "{0} Attractor" -f $name
    $altUrl  = "/pl/systemy/{0}/" -f $slug

    $contentEn = @"
---
layout: default
lang: en
permalink: /en/systems/$slug/
title: $titleEn
alt_url: $altUrl
alt_lang: pl
---

# $name

**Summary.** ${summary}

**Equations (add-on form).**  
\[
\dot{x} = $dx, \quad
\dot{y} = $dy, \quad
\dot{z} = $dz.
\]

**Typical parameters.**  
$paramBlock

**Integration (typical).**  
- Method: ${proc}, dt: ${dt}, steps: ${steps}, burn-in: ${burnin}$(
    if ($tol) { ", tol: $tol" } else { "" }
  )


**Source.** ${source}

[← Back to Systems](/en/systems/)

<!-- scaffolded: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss") -->
"@

    # Create directory
    if (-not (Test-Path $dirEn)) {
        if ($PSCmdlet.ShouldProcess($dirEn, "Create directory")) {
            New-Item -ItemType Directory -Path $dirEn -Force | Out-Null
        }
    }

    # Skip or overwrite file
    if ((Test-Path $fileEn) -and -not $Overwrite) {
        $skipped += $fileEn
        continue
    }

    if ($PSCmdlet.ShouldProcess($fileEn, $(if (Test-Path $fileEn) {"Overwrite index.md"} else {"Create index.md"}))) {
        Set-Content -Path $fileEn -Value $contentEn -Encoding UTF8
        $created += $fileEn
    }
}

# --- Report ---
"Scaffold complete."
"Created: $($created.Count) file(s)."
"Skipped (exists): $($skipped.Count) file(s)."
if ($created) { "`nCreated files:`n - " + ($created -join "`n - ") | Write-Output }
if ($skipped) { "`nSkipped files:`n - " + ($skipped -join "`n - ") | Write-Output }
