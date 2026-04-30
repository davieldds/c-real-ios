#!/usr/bin/env bun
/**
 * Serves the built static site in this directory (after `make doc` copies `.vitepress/dist` here).
 */
import { join } from 'node:path'
import { stat } from 'node:fs/promises'

const root = import.meta.dir
const host = process.env.HOST || '127.0.0.1'
const port = Number(process.env.PORT) || 4173

Bun.serve({
  port,
  hostname: host,
  async fetch(req) {
    const url = new URL(req.url)
    if (url.pathname.includes('..')) {
      return new Response('Bad path', { status: 400 })
    }

    const rel = url.pathname === '/' ? 'index.html' : url.pathname.replace(/^\//, '')
    const paths = [join(root, rel), join(root, rel, 'index.html')]

    for (const p of paths) {
      try {
        const s = await stat(p)
        if (s.isFile()) return new Response(Bun.file(p))
      } catch {
        /* try next */
      }
    }

    return new Response('Not found', { status: 404 })
  },
})

console.log(`Serving ${root} at http://${host}:${port}/`)
