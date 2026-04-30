import { defineConfig } from 'vitepress'
import { apiSidebar } from './generated/api-sidebar'
import { guideSidebar } from './generated/guide-sidebar'
import { dartpadPlugin } from './theme/plugins/dartpad'
import { apiLinkerPlugin } from './theme/plugins/api-linker'
// import llmstxt from 'vitepress-plugin-llms'

function normalizeDocsBasePath(raw = process.env.DOCS_BASE_PATH ?? '/'): string {
  const trimmed = raw.trim()
  if (!trimmed || trimmed === '/') return '/'

  let normalized = trimmed
  if (!normalized.startsWith('/')) {
    normalized = `/${normalized}`
  }
  if (!normalized.endsWith('/')) {
    normalized = `${normalized}/`
  }
  return normalized
}

function withDocsBasePath(path: string): string {
  const normalizedPath = path.replace(/^\/+/, '')
  return `${docsBasePath}${normalizedPath}`
}

const docsBasePath = normalizeDocsBasePath()

export default defineConfig({
  title: 'c_real API',
  description: 'API documentation for c_real',
  base: docsBasePath,
  head: [
    ['link', { rel: 'icon', type: 'image/svg+xml', href: withDocsBasePath('/favicon.svg') }],
  ],
  srcExclude: [
    'CLAUDE.md',
    'AGENTS.md',
    // Mirrored dartdoc workspace (`--workspace-docs`) nests under `guide/c_real/` and can pull in
    // whole trees + node_modules READMEs as Markdown routes — exclude all of it from VitePress.
    'guide/c_real/**',
    '**/guide/c_real/**',
  ],
  // Cross-references to SDK types (dart:core, dart:collection) produce
  // dead links since we only generate docs for this package.
  ignoreDeadLinks: true,
  // Show "Last updated" timestamps on pages (requires git history).
  lastUpdated: true,
  // vite: {
  //   plugins: [llmstxt()],
  // },
  markdown: {
    config: (md) => {
      md.use(dartpadPlugin)
      md.use(apiLinkerPlugin)
    },
  },
  themeConfig: {
    // "On this page" outline: show h2–h4 with nested tree structure.
    outline: { level: [2, 4] },
    // Full-text search powered by MiniSearch (built into VitePress).
    search: {
      provider: 'local',
    },
    // Navigation bar links.
    nav: [
      { text: 'Guide', link: '/guide/' },
      {
        text: 'API manual',
        link: 'https://c-real.krychlic.com/',
        target: '_blank',
        rel: 'noopener noreferrer',
      },
      { text: 'API Reference', link: '/api/' },
    ],
    sidebar: {
      ...apiSidebar,
      ...guideSidebar,
    },
    socialLinks: [],
  },
})
